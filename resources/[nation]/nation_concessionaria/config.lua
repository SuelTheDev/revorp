local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

config = {}
Proxy.addInterface("nation_concessionaria", config)

-------------------------------

--[[


      __      _______  _____  ____  
     /\ \    / /_   _|/ ____|/ __ \ 
    /  \ \  / /  | | | (___ | |  | |
   / /\ \ \/ /   | |  \___ \| |  | |
  / ____ \  /   _| |_ ____) | |__| |
 /_/    \_\/   |_____|_____/ \____/ 

 
LEIA O .TXT DEIXADO NO RAR PARA SOLUCIONAR DÚVIDAS
LEIA O .TXT DEIXADO NO RAR PARA SOLUCIONAR DÚVIDAS
COLE A PASTA vrp_images deixada no .RAR que você baixou no seguinte local: C:\xampp\htdocs
COLE A PASTA vrp_images deixada no .RAR que você baixou no seguinte local: C:\xampp\htdocs
COLE A PASTA vrp_images deixada no .RAR que você baixou no seguinte local: C:\xampp\htdocs
COLE A PASTA vrp_images deixada no .RAR que você baixou no seguinte local: C:\xampp\htdocs

Creditos Striker#3177.
Creditos Striker#3177.
Creditos Striker#3177.


]]

config.imgDir = "http://34.95.138.47/imagens/vrp_images/" -- DIRETORIO DAS IMAGENS DOS VEÍCULOS

-- LISTA DOS VEÍCULOS EM DESTAQUE

config.topVehicles = {	 
	"panto"
}

config.logo = "https://cdn.discordapp.com/attachments/1062810344587800667/1063668474905362482/2171139150173.560c974e07270.png" -- LOGO DO SERVIDOR

config.defaultImg = "https://svgsilh.com/svg/160895.svg" -- IMAGEM DEFAULT (SERÁ EXIBIDA QUANDO NÃO EXISTIR A IMAGEM DE ALGUM VEÍCULO NO DIRETÓRIO ESPECIFICADO)

config.openconce_permission = nil -- permissao para abrir a concessionaria

config.updateconce_permission = "admin.permissao" -- permissao para abrir o menu de gerenciamento da conce

config.porcentagem_venda = 50 -- porcentagem de venda dos veículos possuidos

config.porcentagem_testdrive = 0.1 -- porcentagem do valor do veículo paga para a realização do test drive

config.tempo_testdrive = 30 -- tempo de duração do test drive em segundos

config.maxDistance = 300 -- distância máxima (em radius(raio)) que o player poderá ir quando estiver realizando o test drive

config.porcentagem_aluguel = 1 -- porcentagem do valor do veículo paga para alugar

-- CLASSES QUE APARECEM NO MENU DA CONCE

config.conceClasses = {
	{ class = "sedans", img = "https://img.indianautosblog.com/2018/09/25/india-bound-2019-honda-civic-images-front-three-qu-e966.jpg" },
	{ class = "suvs", img = "https://www.otokokpit.com/wp-content/uploads/2017/11/yeni-range-rover-evoque-landmark-edition-1.jpg" },
	{ class = "imports", img = "https://besthqwallpapers.com/Uploads/25-6-2019/97150/thumb2-lamborghini-gallardo-supercars-motion-blur-road-gray-gallardo.jpg" },
	{ class = "trucks", img = "https://images3.alphacoders.com/149/thumb-1920-149257.jpg" },
	{ class = "motos", img = "https://i.pinimg.com/originals/cc/92/dd/cc92dda56f23a2a41682e80e7fe0f744.jpg" },
	{ class = "br", img = "https://cdn.discordapp.com/attachments/838847862170845277/855220842739531786/afquych1nn5qqjls3vvox9sj8.png" },
}

-- IMAGEM QUE APARECE NA SEÇÃO DE 'MEUS VEÍCULOS'

config.myVehicles_img = "https://www.itl.cat/pngfile/big/50-505834_download-nfs-hot-pursuit.jpg"

-- CLASSES DOS VEÍCULOS INSERIDAS DENTRO DAS CLASSES QUE APARECEM NA CONCE

config.availableClasses = {
	["sedans"] = {"sedan"},
	["suvs"] = {"suv"},
	["imports"] = {"classic", "sport", "super"},  
	["trucks"] = {"industrial", "utility", "commercial"},
	["motos"] = {"moto", "cycle"},
	["br"] = {"br"}
}

-- ÍCONES DA CONCE

config.miscIcons = {
	{ description = "Força e velocidade necessárias para aquela dose de adrenalina.", img = "https://www.flaticon.com/svg/static/icons/svg/586/586141.svg" },
	{ description = "Incríveis opções econômicas que cabem no seu bolso!", img = "https://www.flaticon.com/svg/static/icons/svg/846/846117.svg" },
	{ description = "Para você que valoriza a eficácia e praticidade.", img = "https://www.flaticon.com/svg/static/icons/svg/1535/1535519.svg" },
}

-- DESCONTOS POR PERMISSAO

config.descontos = {
	{ perm = "admin.permissao", porcentagem =  0 },
	{ perm = "dono.permissao", porcentagem = 0 },
	{ perm = "bronze.permissao", porcentagem = 0 }
}

-- cada veículo deve conter => { hash, name, price, banido, modelo, capacidade, tipo }

config.vehList = {
	
-----------------------------------------------------------------------------------------------------------------------------------------
-- baike
-----------------------------------------------------------------------------------------------------------------------------------------


	{ hash = 1131912276, name = 'bmx', price = 1000, banido = false, modelo = 'Bmx', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 448402357, name = 'cruiser', price = 1500, banido = false, modelo = 'Cruiser', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -836512833, name = 'fixter', price = 2000, banido = false, modelo = 'Fixter', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -186537451, name = 'scorcher', price = 2500, banido = false, modelo = 'Scorcher', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 1127861609, name = 'tribike', price = 5000, banido = false, modelo = 'Tribike', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1233807380, name = 'tribike2', price = 7500, banido = false, modelo = 'Tribike2', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -400295096, name = 'tribike3', price = 10000, banido = false, modelo = 'Tribike3', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },


-----------------------------------------------------------------------------------------------------------------------------------------
-- EXCLUSIVOS
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 898224721, name = '19raptor', price = 500000, banido = false, modelo = 'Raptor 150', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 1888878629, name = 'aventsvjr', price = 500000, banido = false, modelo = 'Lamborghini SVJ', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1487934236, name = 'gcm992gt3', price = 500000, banido = false, modelo = 'Porsche GT3', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -548280172, name = 'laferrari', price = 500000, banido = false, modelo = 'La Ferrari', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- VIPS
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 1114244595, name = 'lamborghinihuracan', price = 500000, banido = false, modelo = 'Lamborghini Huracan', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1296077726, name = 'pturismo', price = 500000, banido = false, modelo = 'Porsche Panamera', capacidade = 100, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1173768715, name = 'ferrariitalia', price = 500000, banido = false, modelo = 'Ferrari Pista Spider', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 1718441594, name = 'i8', price = 500000, banido = false, modelo = 'Bmw i8', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1752116803, name = 'gtr', price = 500000, banido = false, modelo = 'Nissan GTR', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 104532066, name = 'g65amg', price = 500000, banido = false, modelo = 'Mercedes G65 AMG', capacidade = 300, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 162432206, name = 'mst', price = 500000, banido = false, modelo = 'Mustang GT Shelby', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -520214134, name = 'urus', price = 500000, banido = false, modelo = 'Lamborghini URUS', capacidade = 20, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -863022767, name = '911vip', price = 500000, banido = false, modelo = 'Porsche 911', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -217995216, name = 'amggtc', price = 500000, banido = false, modelo = 'Mercedes AMG', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -42051018, name = 'veneno', price = 500000, banido = false, modelo = 'Lamborghini Aventador', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1796140063, name = 'lp610', price = 500000, banido = false, modelo = 'Lamborghini LP 610', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1382835569, name = 'cayenne', price = 500000, banido = false, modelo = 'Porsche Cayenne', capacidade = 300, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 580861919, name = 'fc15', price = 500000, banido = false, modelo = 'Ferrari California', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -984938540, name = '18Velar', price = 500000, banido = false, modelo = 'Land Rover Velar', capacidade = 300, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1088481501, name = '675lt', price = 500000, banido = false, modelo = 'MCLaren 675 LT', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 1663453404, name = 'evoque', price = 500000, banido = false, modelo = 'Evoque Conversivel', capacidade = 250, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 859560111, name = 's500w222', price = 500000, banido = false, modelo = 'Mercedes S500', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -2035480284, name = 'RollsRoyceCP', price = 500000, banido = false, modelo = 'Rollys Royce CP', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1437054386, name = 'amggt63s', price = 1000000, banido = false, modelo = 'Mercedes GT3S', capacidade = 300, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -970634648, name = 'amggt63', price = 1000000, banido = false, modelo = 'Mercedes GT63', capacidade = 300, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -979071501, name = 'teslamodels', price = 500000, banido = false, modelo = 'Tesla Models', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -293031363, name = 's1000docandidato', price = 500000, banido = false, modelo = 'Bmw S1000RR', capacidade = 10, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 1058674908, name = 'r1250adv', price = 500000, banido = false, modelo = 'Bmw R1250 Adventure', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1775453271, name = 'tiger1200', price = 500000, banido = false, modelo = 'Tiger 1200', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -628496438, name = 'pinigale', price = 500000, banido = false, modelo = 'Ducati Pinigale', capacidade = 10, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1265899455, name = 'hcbr17', price = 500000, banido = false, modelo = 'CBR 1000', capacidade = 10, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1532432776, name = 'r1200gs', price = 500000, banido = false, modelo = 'BMW R1200 GS', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1156537658, name = 'tiger', price = 50000, banido = false, modelo = 'Tiger 800', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -16839848, name = 'xjturbo', price = 500000, banido = false, modelo = 'XJ6 Turbo', capacidade = 10, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -982569566, name = 'tenere', price = 500000, banido = false, modelo = 'Super Tenere 1100', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1029452368, name = 'cb2020', price = 500000, banido = false, modelo = 'CB 1000 2020', capacidade = 10, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -486920242, name = 'dm1200', price = 500000, banido = false, modelo = 'Ducati 1260', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1990820579, name = 'sxr', price = 500000, banido = false, modelo = 'S1000 XR', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 1258059543, name = 'africa', price = 500000, banido = false, modelo = 'Africa Twin 1100', capacidade = 30, tipo = 'vip', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1747980967, name = 'tts', price = 1000000, banido = false, modelo = 'Audi TT', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -1528734685, name = '718b', price = 3000000, banido = false, modelo = 'Porsche 718b Rebaixado', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -143695728, name = 'r820', price = 500000, banido = false, modelo = 'Audi R8', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 1676738519, name = 'audirs6', price = 2000000, banido = false, modelo = 'Audi RS6', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = 466040693, name = '370z', price = 5000000, banido = false, modelo = 'Nissan 370z', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "vip"  },
	{ hash = -4816535, name = 'nissanskyliner34', price = 500000, banido = false, modelo = 'Nissan SKYLINE R34', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "VIP"  },
	{ hash = 745926877, name = 'buzzard2', price = 1000, banido = true, modelo = 'Buzzard 2', capacidade = 10, tipo = 'vip', slots = 10, rentalPrice = nil  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- BABY
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 1829259168, name = 'r1250baby', price = 0, banido = false, modelo = 'baby', capacidade = 250, tipo = 'work', slots = 10, rentalPrice = nil, class = "vip"  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- EXCLUSIVOS
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = -2130828118, name = 'PAREDAOG8', price = 150000, banido = false, modelo = 'Paredao G8', capacidade = 0, tipo = 'carros', slots = 10, rentalPrice = nil, class = "som"  },
	{ hash = 2046350883, name = 'SomHulk', price = 75000, banido = false, modelo = 'Som Hulk', capacidade = 0, tipo = 'carros', slots = 10, rentalPrice = nil, class = "som"  },
	{ hash = 1038274186, name = 'Treme', price = 170000, banido = false, modelo = 'Paredao TREME', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = -1680938805, name = 'TremeTreme', price = 150000, banido = false, modelo = 'Paredao TREME TREME', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = 524108981, name = 'carretinham', price = 1000000, banido = false, modelo = 'Carretinha Moto', capacidade = 0, tipo = 'carros', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = 524108981, name = 'carretinhacarro', price = 1000000, banido = false, modelo = 'Carretinha Carro', capacidade = 0, tipo = 'carros', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = -721804238, name = 'carretinhajetski', price = 1000000, banido = false, modelo = 'Carretinha Jetski', capacidade = 0, tipo = 'carros', slots = 10, rentalPrice = nil, class = "industrial"  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- CARROS-BR
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 1125130375, name = 'polo', price = 200000, banido = false, modelo = 'Gol', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1995020435, name = 'celta', price = 150000, banido = false, modelo = 'Celta', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 77673261, name = 'golquadrado', price = 150000, banido = false, modelo = 'Gol Quadrado Turbo', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 515734555, name = 'astra', price = 150500, banido = false, modelo = 'Astra', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = -865546683, name = 'golfsportline', price = 350000, banido = false, modelo = 'Golf Sportline', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1883881780, name = 'golg2', price = 150000, banido = false, modelo = 'Gol Paredao', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = -1794393272, name = 'minicooper', price = 250500, banido = false, modelo = 'MinI Cooper', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 2109544351, name = 'saveirog4surf', price = 150000, banido = false, modelo = 'Saveiro Surf', capacidade = 250, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1451518270, name = 'saveiro', price = 130000, banido = false, modelo = 'Saveiro', capacidade = 100, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1062355240, name = 'uno', price = 150500, banido = false, modelo = 'Uno', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = -2019386221, name = 'golfgti', price = 2000000, banido = false, modelo = 'Golf GTI', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1108681163, name = 'fuscatsi', price = 1500000, banido = false, modelo = 'Fusca TSI', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1876694905, name = 'veloster', price = 1500000, banido = false, modelo = 'Veloster', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 572850486, name = 'spacefox', price = 800000, banido = false, modelo = 'Space Fox', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = -1078573354, name = 'kadett', price = 130000, banido = false, modelo = 'Kaddet', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = 1644055914, name = 'weevil', price = 130000, banido = false, modelo = 'Fusca', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },
	{ hash = -1702326766, name = 'corolla', price = 500000, banido = false, modelo = 'Corolla', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "br"  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- SEDAN
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 109912402, name = 'audia3', price = 200000, banido = false, modelo = 'Audi A3', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan"  },
	{ hash = -440972578, name = 'jetta2017', price = 85750, banido = false, modelo = 'Jetta', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan"  },
	{ hash = -494839908, name = 'a6', price = 300000, banido = false, modelo = 'Audi A6', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan"  },
	{ hash = -716824881, name = 'civicsi', price = 150000, banido = false, modelo = 'Civic Si', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan "  },
	{ hash = -622126799, name = 'jettagli', price = 200000, banido = false, modelo = 'Jetta Gli', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan"  },
	{ hash = 1988219689, name = 'corolla2017', price = 150000, banido = false, modelo = 'Corolla', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan"  },
	{ hash = -547156707, name = 'azera', price = 250000, banido = false, modelo = 'Azera', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan"  },
	{ hash = -420911112, name = 'patriot2', price = 500000, banido = false, modelo = 'Hummer Limousine', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan "  },
	{ hash = -1961627517, name = 'stretch', price = 100000, banido = false, modelo = 'Limousine Executiva', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "sedan "  },
	

-----------------------------------------------------------------------------------------------------------------------------------------
-- SUV
-----------------------------------------------------------------------------------------------------------------------------------------



	{ hash = 493030188, name = 'amarok', price = 155500, banido = false, modelo = 'Amarok', capacidade = 300, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = -506359117, name = 'x6m', price = 10000000, banido = false, modelo = 'Bmw X6m', capacidade = 250, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = -125152048, name = 'bmwx1', price = 200000, banido = false, modelo = 'Bmw X1M', capacidade = 250, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = -110704625, name = 's10', price = 305000, banido = false, modelo = 'S10', capacidade = 100, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = -590823126, name = 'hilux2022', price = 300000, banido = false, modelo = 'Hilux', capacidade = 100, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = 137952352, name = 'sw4', price = 400000, banido = false, modelo = 'Sw4', capacidade = 100, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = 284310455, name = 'xc90', price = 200000, banido = false, modelo = 'Volvo XC90', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = 408825843, name = 'outlaw', price = 120000, banido = false, modelo = 'Buggy Can Am', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = 1847017357, name = 'l200civil', price = 336250, banido = false, modelo = 'L200', capacidade = 200, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = -556794296, name = 'compass', price = 200000, banido = false, modelo = 'Jeep Compass', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = -1686080635, name = 'f250deboxe', price = 400000, banido = false, modelo = 'F250', capacidade = 250, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },
	{ hash = 1749763978, name = 'vw', price = 100000, banido = false, modelo = 'Kombi', capacidade = 250, tipo = 'carros', slots = 10, rentalPrice = nil, class = "suv"  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- SUPER
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 637861346, name = 'opala', price = 300000, banido = false, modelo = 'Opala', capacidade = 100, tipo = 'work', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = -157095615, name = 'bmwm3f80', price = 550000, banido = false, modelo = 'Bmw M3', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = -208911803, name = 'jugular', price = 1000000, banido = false, modelo = 'Jaguar', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = 874739883, name = 'c7', price = 500000, banido = false, modelo = 'Corvette', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = -2109805185, name = '2013LP560', price = 1200000, banido = false, modelo = 'Lamborghini Galardo', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = -1728685474, name = 'coquette4', price = 850000, banido = false, modelo = 'Corvette 2020', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = -1485709732, name = '16ss', price = 400000, banido = false, modelo = 'Camaro SS', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = 723779872, name = 'toyotasupra', price = 9000000, banido = false, modelo = 'Toyota Supra', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super" },
	{ hash = -2136030678, name = 'a45amg', price = 320000, banido = false, modelo = 'Mercedes A45 AMG', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = 1769548661, name = 'c63w205', price = 1300000, banido = false, modelo = 'Mercedes C63', capacidade = 80, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = 321186144, name = 'stafford', price = 1000000, banido = false, modelo = 'Stafford', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = 820120452, name = 'impala67', price = 1000000, banido = false, modelo = 'Impala 67', capacidade = 100, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },
	{ hash = 1978088379, name = 'lancerevolutionx', price = 900000, banido = false, modelo = 'Lancer Evolution', capacidade = 100, tipo = 'carros', slots = 30, rentalPrice = nil, class = "super"  },
	{ hash = -13524981, name = 'bmwm4gts', price = 850000, banido = false, modelo = 'Bmw M4', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "super"  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- MOTOS
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 89762412, name = 'dt200', price = 15000, banido = false, modelo = 'DT 200', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -913575190, name = 'bbros', price = 48000, banido = false, modelo = 'Bros 160', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -2018756422, name = 'harley', price = 1000000, banido = false, modelo = 'Harley', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1591433303, name = 'start160', price = 33000, banido = false, modelo = 'CG Start 160', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1090539832, name = 'biz08', price = 28000, banido = false, modelo = 'Biz 125', capacidade = 30, tipo = 'carros', slots = 20, rentalPrice = nil, class = "moto"  },
	{ hash = 1734822922, name = 'quadriciclo', price = 180000, banido = false, modelo = 'Quadriciclo', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 298565713, name = 'verus', price = 110000, banido = false, modelo = 'Quadriciclo 2', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1761239425, name = 'hornet', price = 1000000, banido = false, modelo = 'Hornet 600', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 531955362, name = 'r1200rally', price = 10000000, banido = false, modelo = 'BMW R1200 Rally', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -497149362, name = 's10002017', price = 10000000, banido = false, modelo = 'S1000 RR 2017', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1129117794, name = 'xre2012', price = 50000, banido = false, modelo = 'Xre 300 Adventure', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -423677691, name = 'sr1', price = 200000, banido = false, modelo = 'Bmw S1000r', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -234700505, name = 'pop110', price = 27000, banido = false, modelo = 'POP 110', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -1874309937, name = '300', price = 40000, banido = false, modelo = 'CB 300', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -1183641544, name = 'milgrau', price = 100000, banido = false, modelo = 'Hornet Carburada 600', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1065246059, name = 'falcon', price = 80000, banido = false, modelo = 'Falcon 400', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"    },
	{ hash = -276187291, name = 'mt17', price = 150000, banido = false, modelo = 'MT 07', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = 1575628331, name = 'mt099', price = 190000, banido = false, modelo = 'MT 09', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 321407703, name = 'cbtwister', price = 48000, banido = false, modelo = 'CB Twister 250', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -591868813, name = 'transalp', price = 90000, banido = false, modelo = 'Transalp 700', capacidade = 30, tipo = 'moto', slots = 10, rentalPrice = nil, class = "moto" },
	{ hash = -916334124, name = '250', price = 45000, banido = false, modelo = 'CG 250', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 342059638, name = 'xj6', price = 120000, banido = false, modelo = 'Xj6', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 1298078286, name = 'tiger900', price = 100000, banido = false, modelo = 'Tiger 900', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 642762300, name = 'xrepcr', price = 70000, banido = false, modelo = 'Xre 300', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -2023876491, name = '160', price = 38000, banido = false, modelo = 'Titan 160', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = 1935444402, name = 'cbb', price = 100000, banido = false, modelo = 'CB 1000', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 1305247149, name = 'gs310', price = 94000, banido = false, modelo = 'Bmw Gs310', capacidade = 20, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1667151882, name = 'moby', price = 10000, banido = false, modelo = 'Mobilete', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -475284513, name = 'f800', price = 100000, banido = false, modelo = 'Bmw F800', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1639924411, name = '450crf', price = 110000, banido = false, modelo = '450 CRF', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -1378825203, name = 'xt660vip', price = 130000, banido = false, modelo = 'XT 660', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 703607519, name = 'gs650', price = 90000, banido = false, modelo = 'GS 650', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 1300207027, name = 'f800r', price = 1000000, banido = false, modelo = 'F800R', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -1987109409, name = '150', price = 20000, banido = false, modelo = 'Fan 150', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = 1744543800, name = 'z1000', price = 300000, banido = false, modelo = 'Kawasaki Z1000', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -558848462, name = 'cgmontadinha', price = 150000, banido = false, modelo = 'CG Montadinha', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -479650318, name = 'tiger2021', price = 500000, banido = false, modelo = 'Tiger 800 2021', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -156523467, name = 'tigerlow', price = 400000, banido = false, modelo = 'Tiger XRLOW', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -207910398, name = 'cbr', price = 300000, banido = false, modelo = 'CBR 600', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 494265960, name = 'cb500x', price = 135000, banido = false, modelo = 'CB 500X', capacidade = 30, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"   },
	{ hash = -1183641544, name = 'milgrau', price = 100000, banido = false, modelo = 'Hornet Carburada 600', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -913575190, name = 'bbros', price = 200000, banido = false, modelo = 'Bros 160', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 1709518892, name = 'zx10', price = 600000, banido = false, modelo = 'ZX1000', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = 1343190773, name = 'xtgang', price = 500000, banido = false, modelo = 'ZX1000', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },
	{ hash = -883244519, name = 'xre300', price = 200000, banido = false, modelo = 'XRE 300', capacidade = 10, tipo = 'carros', slots = 10, rentalPrice = nil, class = "moto"  },



-----------------------------------------------------------------------------------------------------------------------------------------
-- SAMU
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = 1171614426, name = 'ambulance', price = 0, banido = true, modelo = 'Ambulancia', capacidade = 10, tipo = 'work', slots = 10, rentalPrice = nil  },
	{ hash = 378051982, name = 'xt660samu', price = 0, banido = true, modelo = 'XT660 SAMU', capacidade = 10, tipo = 'work', slots = 10, rentalPrice = nil  },

-----------------------------------------------------------------------------------------------------------------------------------------
-- HELICOPETORO
-----------------------------------------------------------------------------------------------------------------------------------------

	{ hash = -1984275979, name = 'havok', price = 12000000, banido = true, modelo = 'Havok', capacidade = 50, tipo = 'work', slots = 10, rentalPrice = nil, class = "helicoptero"  },
	{ hash = -1030275036, name = 'seashark', price = 500000, banido = true, modelo = 'Jetski', capacidade = 10, tipo = 'work', slots = 10, rentalPrice = nil, class = "jetski"  },
	{ hash = -1984275979, name = 'suntrap', price = 3000000, banido = true, modelo = 'Mini Lancha', capacidade = 10, tipo = 'work', slots = 10, rentalPrice = nil, class = "barco"  },
	{ hash = -1984275979, name = 'dinghy3', price = 2000000, banido = true, modelo = 'Barco Boia', capacidade = 200, tipo = 'work', slots = 10, rentalPrice = nil, class = "barco"  },
	{ hash = -311022263, name = 'seashark3', price = 1000000, banido = true, modelo = 'Jetski Executivo', capacidade = 10, tipo = 'work', slots = 10, rentalPrice = nil, class = "jetski"  },
	{ hash = -1984275979, name = 'buzzard2', price = 20000000, banido = true, modelo = 'Buzzard', capacidade = 300, tipo = 'work', slots = 10, rentalPrice = nil, class = "helicoptero"  },
	{ hash = 1077420264, name = 'velum2', price = 15000000, banido = true, modelo = 'Velum', capacidade = 1000, tipo = 'work', slots = 10, rentalPrice = nil, class = "helicoptero"  },
	{ hash = -2122757008, name = 'stunt', price = 10000000, banido = true, modelo = 'Velum', capacidade = 1000, tipo = 'work', slots = 10, rentalPrice = nil, class = "helicoptero"  },
	{ hash = -1763555241, name = 'microlight', price = 10000000, banido = true, modelo = 'Velum', capacidade = 1000, tipo = 'work', slots = 10, rentalPrice = nil, class = "helicoptero"  },
	{ hash = 2091594960, name = 'tr4', price = 500000, banido = false, modelo = 'CARGA 3', capacidade = 1000, tipo = 'work', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = 387748548, name = 'hauler2', price = 1500000, banido = false, modelo = 'Scania', capacidade = 0, tipo = 'work', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = 1945374990, name = 'mule4', price = 1500000, banido = false, modelo = 'Caminhao Bau', capacidade = 1000, tipo = 'work', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = 358580688, name = 'Carreta', price = 320000, banido = false, modelo = 'Carreta Paredao', capacidade = 50, tipo = 'carros', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = -1034834222, name = 'corollapc', price = 0, banido = false, modelo = 'Corolla PC', capacidade = 0, tipo = 'work', slots = 10, rentalPrice = nil  },
	{ hash = 924302710, name = 'as350pc', price = 1000, banido = true, modelo = 'Helicoptero PC', capacidade = 10, tipo = 'work', slots = 10, rentalPrice = nil, class = "industrial"  },
	{ hash = -44231301, name = 'towtruck2', price = 0, banido = false, modelo = 'Guincho 2', capacidade = 0, tipo = 'work', slots = 10, rentalPrice = nil  },

	
}


-- RETORNA A LISTA DE VEÍCULOS
config.getVehList = function()
	return config.vehList
end

-- RETORNA AS INFORMAÇÕES CONTIDAS NA LISTA DE UM VEÍCULO ESPECÍFICO
config.getVehicleInfo = function(vehicle)
	for i in ipairs(config.vehList) do
		if vehicle == config.vehList[i].hash or vehicle == config.vehList[i].name then
            return config.vehList[i]
        end
    end
    return false
end

-- RETORNA O MODELO DE UM VEÍCULO ESPECÍFICO (NOME BONITINHO)
config.getVehicleModel = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.modelo or vehicle
	end
	return vehicle
end

-- RETORNA A CAPACIDADE DO PORTA-MALAS DE UM VEÍCULO ESPECÍFICO
config.getVehicleTrunk = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.capacidade or 0
	end
	return 0
end

-- RETORNA O PREÇO DE UM VEÍCULO ESPECÍFICO
config.getVehiclePrice = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.price or 0
	end
	return 0
end

-- RETORNA O TIPO DE UM VEÍCULO ESPECÍFICO
config.getVehicleType = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.tipo or 0
	end
	return "none"
end

-- RETORNA O STATUS DE BANIDO DE UM VEÍCULO ESPECÍFICO
config.isVehicleBanned = function(vehicle)
	local vehInfo = config.getVehicleInfo(vehicle)
	if vehInfo then
		return vehInfo.banido
	end
	return false
end



-- RETORNA AS INFORMAÇÕES DO VEÍCULO REFERENTE À LISTA DE VEÍCULOS (VEHLIST)
config.getVehicleInfo = function(vehicle)
	for i in ipairs(config.vehList) do
		if vehicle == config.vehList[i].hash or vehicle == config.vehList[i].name then
            return config.vehList[i]
        end
    end
    return false
end

-------------------------------


 --- MYSQL---

 vRP._prepare("nation_conce/getConceVehicles","SELECT * FROM nation_concessionaria WHERE estoque > 0")

vRP._prepare("nation_conce/hasVehicle","SELECT vehicle, alugado FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")

vRP._prepare("nation_conce/hasFullVehicle","SELECT vehicle FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle AND alugado = 0")

vRP._prepare("nation_conce/hasRentedVehicle","SELECT vehicle FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle AND alugado = 1")

vRP._prepare("nation_conce/getMyVehicles", "SELECT * FROM vrp_user_vehicles WHERE user_id = @user_id AND alugado = 0")

vRP._prepare("nation_conce/deleteRentedVehicles", "DELETE FROM vrp_user_vehicles WHERE alugado = 1 AND data_alugado != @data_alugado")

vRP._prepare("nation_conce/updateUserVehicle","UPDATE vrp_user_vehicles SET alugado = 0 WHERE user_id = @user_id AND vehicle = @vehicle")

vRP.prepare("nation_conce/addUserVehicle",[[
	INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,detido,time,engine,body,fuel,ipva) 
	VALUES(@user_id,@vehicle,@detido,@time,@engine,@body,@fuel,@ipva);
]])

vRP.prepare("nation_conce/addUserRentedVehicle",[[
	INSERT IGNORE INTO vrp_user_vehicles(user_id,vehicle,detido,time,engine,body,fuel,ipva,alugado,data_alugado) 
	VALUES(@user_id,@vehicle,@detido,@time,@engine,@body,@fuel,@ipva,1,@data_alugado);
]])

vRP._prepare("nation_conce/removeUserVehicle","DELETE FROM vrp_user_vehicles WHERE user_id = @user_id AND vehicle = @vehicle")

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


-- FUNCÃO DE COMPRA DO VEÍCULO

config.tryBuyVehicle = function(source, user_id, vehicle, color, price, mods)
	if source and user_id and vehicle and color and price and mods then
		local data = vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = vehicle})
		local hasVehicle = #data > 0
		local isRented = data[1] and data[1].alugado > 0
		if hasVehicle and not isRented then
			return false, "veículo já possuído"
		end
		if vRP.tryFullPayment(user_id,price) then
			Citizen.CreateThread(function()
				if isRented then
					vRP.execute("nation_conce/updateUserVehicle", {
						user_id = user_id, vehicle = vehicle
					})
				else 
					vRP.execute("nation_conce/addUserVehicle", {
						user_id = user_id, vehicle = vehicle, detido = 0, time = 0, engine = 1000, body = 1000, fuel = 100, ipva = os.time()
					})
				end
				mods.customPcolor = color
				vRP.setSData("custom:u"..user_id.."veh_"..vehicle,json.encode(mods))
			end)
			return true, "sucesso!"
		else
			return false, "falha no pagamento"
		end
	end
	return false, "erro inesperado"
end




-- FUNÇÃO DE VENDA DO VEÍCULO

config.trySellVehicle = function(source, user_id, vehicle, price)
	if source and user_id and vehicle and price then
		local hasVehicle = #vRP.query("nation_conce/hasFullVehicle", {user_id = user_id, vehicle = vehicle}) > 0
		if hasVehicle then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/removeUserVehicle", {user_id = user_id, vehicle = vehicle})
				vRP.giveMoney(user_id,parseInt(price))
			end)
			return true, "sucesso!"
		else
			return false, "veículo alugado ou já vendido"
		end
	end
	return false, "erro inesperado"
end



-- VERIFICAÇÃO DE TEST DRIVE

config.tryTestDrive = function(source, user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
		return true, "deseja pagar <b>$ "..vRP.format(price).."</b> para realizar o test drive em um(a) <b>"..info.modelo.."</b> ?"
	end
	return false, "erro inesperado"
end



-- VERIFICAÇÃO DO PAGAMENTO DO TEST DRIVE

config.payTest = function(source,user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_testdrive / 100))
		if vRP.tryFullPayment(user_id, price) then
			return true, "sucesso!", price
		else
			return false, "falha no pagamento"
		end
	end
	return false, "erro inesperado"
end


-- DEVOLVER O DINHEIRO CASO NÃO DÊ PARA FAZER O TEST

config.chargeBack = function(source,user_id, price)
	if source and user_id and price then
		vRP.giveMoney(user_id,price)
		TriggerClientEvent("Notify",source,"aviso", "Você recebeu seus <b>$ "..vRP.format(price).."</b> de volta.", 3000)
	end
end



-- VERIFICAÇÃO DE ALUGUEL DO VEÍCULO

config.tryRentVehicle = function(source, user_id, info)
	if source and user_id and info then
		local hasVehicle = #vRP.query("nation_conce/hasVehicle", {user_id = user_id, vehicle = info.name}) > 0
		if hasVehicle then
			return false, "veículo já possuído"
		end
		local price = parseInt(info.price * (config.porcentagem_aluguel / 100))
		return true, "deseja pagar <b>$ "..vRP.format(price).."</b> para alugar um(a) <b>"..info.modelo.."</b> por 1 dia?"
	end
	return false, "erro inesperado"
end




-- VERIFICAÇÃO DO PAGAMENTO DO ALUGUEL DO VEÍCULO

config.tryPayRent = function(source,user_id, info)
	if source and user_id and info then
		local price = parseInt(info.price * (config.porcentagem_aluguel / 100))
		if vRP.tryFullPayment(user_id, price) then
			Citizen.CreateThread(function()
				vRP.execute("nation_conce/addUserRentedVehicle", {
					user_id = user_id, vehicle = info.name, detido = 0, time = 0, engine = 1000, body = 1000, fuel = 100, ipva = os.time(), data_alugado = os.date("%d/%m/%Y")
				})
			end)
			return true, "sucesso!"
		else
			return false, "falha no pagamento"
		end
	end
	return false, "erro inesperado"
end

getTopList() -- pega os veículos mais caros da conce e coloca na lista de destaque


-- LOCAIS DAS CONCESSIONARIAS E REALIZAÇÃO DE TESTES

config.locais = {
	{ 
		conce = vec3(-40.08,-1097.21,26.42), 
		test_locais = {
			{ coords = vec3(-960.23,-3350.87,13.95), h = 129.4 },
			{ coords = vec3(-960.23,-3350.87,13.95), h = 122.02 },
			{ coords = vec3(-960.23,-3350.87,13.95), h = 126.74 },
			{ coords = vec3(-960.23,-3350.87,13.95), h = 117.45 },
		}
	},
	{ 
		conce = vec3(-1123.49,-1708.12,4.45),
		test_locais = {
			{ coords = vec3(-960.23,-3350.87,13.95), h = 204.54 },
			{ coords = vec3(-960.23,-3350.87,13.95), h = 212.41 },
			{ coords = vec3(-960.23,-3350.87,13.95), h = 210.01 },
		} 
	},
}

