
function formaDeTirarDinheiro(user_id,amount)
    if vRP.tryPayment(user_id,amount) then
        return true
    else
        return false
    end
end -- sua função de tirar o dinheiro

function formDeDarDinheiro(user_id,amount)
    vRP.giveMoney(user_id,amount)
end -- sua função de tirar o dinheiro

function getMoney(user_id)
    return vRP.getMoney(user_id)
end -- sua função de pegar o dinheiro

function hasPermission(user_id,perm)
    return vRP.hasPermission(user_id,perm)
end -- sua função de pegar a permissao


ConfigRevistar = {
    revistar = true,
    command = "revistar"
}


ConfigServer = {
    slots = 50, -- Maximo de slots que as pessoas poderão ter comprando slots, esse valor menos 15 slot, caso queria que não seja possivel comprar slots bote 0 
    priceSlot = 5000, -- Preço dos slots
    bahamas = false, -- Coloque true caso sua base seja a do bahamas
    typeJob = "job", -- Nome do type dos grupos padrões
    typeJob = "gang",
    typeVip = "vip", -- Nome do type dos grupos dos vips
    multasType = "vRP:multas", -- Nome do banco de dados das multa
    currency = "R$", -- Tipo da sua moeda
    adminPermissao = "admin.permissao", -- Permissão que todos adm tem
    policiaPermissao = "policia.permissao", -- Permissão que todos policiais tem
    garageName = "nation_garages", -- Nome da sua resource de garagem
    skilBar = "", -- Nome da sua resource de skilbar se tiver claro
    groups = "cfg/groups", -- Caso use a base zirix deixe assim: zirix/groups, caso use a evolution deixe assim: evolution/groups
    itemVrp = "modules/inventory", -- Caso use a base zirix deixe assim: zirix, caso use a base evolution deixe assim: evolution
    typeItens = {
        usar = "usar", -- Type dos itens normais
        recarregar = "recarregar", -- Type das munições
        equipar = "equipar", -- Type das armas
    },
    carSlots = {
        exclusive = 30,
        carros = 15,
        motos = 5,
        work = 50,
        trunk = 10,
        vip = 50,
        br = 30
    }, -- Cada carro tem um  tipo isso você pode ver em vrp<modules<inventory.lua, la vai ter uma lista com muitos carros e em cada carro tera tipo, os slots são
    -- separados pelo tipo do carro, ou seja se o tipo do carro for moto então ele pegará os slots da tabela a cima por ex:

    -- Vai estar mais ou menos assim:
    --	["urus"] = { ['name'] = "Lamborghini Urus", ['price'] = 1000000, ['tipo'] = "exclusive" },
    -- O tipo é exclusive então ele pegará 50 slots para esse carro.
    webhook = {
        send = "",
        dropar = "",
        equip = "",
        casa = "",
        carro = "",
        antidupe = "",
    }, -- Webhook de enviar, dropar e equipar, bau de casa, bau de carro, anti-dump respectivamente

    listaDeItens = {
    
        ["suspensaoar"] = { index = "suspensaoar", nome = "Kit Suspensão", filtro = "box", type = "usar" },
        ["moduloneon"] = { index = "moduloneon", nome = "Módulo Neon", filtro = "box", type = "usar" },
        ["moduloxenon"] = { index = "moduloxenon", nome = "Módulo Xenon", filtro = "box", type = "usar" },
        ["fichas"] = { index = "fichas", nome = "Fichas", filtro = "box", type = "usar" },
        ["ticket"] = { index = "ticket", nome = "Ticket", filtro = "box", type = "usar" },
        

        ["celular"] = { index = "celular", nome = "Celular",filtro = "box", type = "usar",  funcao = false, descricao = "Um aparelho de comunicação por ondas eletromagnéticas que permite a transmissão bidirecional de voz e dados" },
        ["mochila"] = { index = "mochila", nome = "Mochila", filtro = "box", type = "usar", funcao = "Aumenta peso", descricao = "Aumenta quantidades de kg que você pode carregar" },
        ["colete"] = { index = "colete", nome = "Colete Balistico", filtro = "box", type = "usar", funcao = "Dar colete", descricao = "Utilize colete para maior segurança na troca de tiro" },
        ["radio"] = { index = "radio", nome = "Radio",filtro = "box", type = "usar", funcao = false, descricao = "Radio utlizado para comunicação" },
        ["dinheiro"] = { index = 'dinheiro', nome = 'Dinheiro', filtro = "box", type = 'usar', funcao = false, descricao = "Dinheiro" },
        ["roupas"] = { index = "roupas", nome = "Roupas", filtro = "box", type = "usar", funcao = "Trocar de roupa", descricao = "Troque de roupa no meio da rua" },
        ["masterpick"] = { index = "masterpick", nome = "Masterpick", filtro = "box", type = "usar", funcao = "Roubar carros", descricao = "Roube carros com essa ferramente, cuidado com a policia" },
        ["militec"] = { index = "militec", nome = "Militec", filtro = "box", type = "usar" },
        ["pneus"] = { index = "pneus", nome = "Pneus", filtro = "box", type = "usar", funcao = "Arrumar pneus", descricao = "Troque o pneu do seu carro, cuidado!"  },
        ["placa"] = { index = "placa", nome = "Placa", filtro = "box", type = "usar", funcao = false, descricao = "Placa falsa para carros clonado" },
        ["algemas"] = { index = "algemas", nome = "Algemas", filtro = "box", type = "usar", funcao = "Algema outras pessoas", descricao = "Algeme outras pessoas, item pode ser ser ilegal" },
        ["capuz"] = { index = "capuz", nome = "Capuz", filtro = "box", type = "usar", funcao = false, descricao = "Bote nas pessoas e elas não enxergaram mais nada" },
        ["lockpick"] = { index = "lockpick", nome = "Lockpick", filtro = "box", type = "usar", funcao = "Roubar carros", descricao = "Roube carros com essa ferramente, cuidado com a policia" },
        ["repairkit"] = { index = "repairkit", nome = "Kit de Reparos", filtro = "box", type = "usar", funcao = "Arruma o carro", descricao = "Kit de reparo para o carro, chame um mecanico" },
        ["alianca"] = { index = "alianca", nome = "Aliança", filtro = "box", type = "usar", funcao = "De para sua esposa ou namorada", descricao = "Anel de compromisso, significa o matrimonio entre 2 pessoas" },
        ["dinheirosujo"] = { index = "dinheirosujo", nome = "Dinheiro Sujo", filtro = "box", type = "usar", funcao = false, descricao = "Dinheiro obtido de maneira ilícita" },

        --====================================================================================================================================================--
        --========================================================== COMIDAS E BEBIDAS ===================================================================================--
        --====================================================================================================================================================--

        ["rosquinha"] = { index = "rosquinha", nome = "Rosquinha",filtro = "food", type = "usar", funcao = false, descricao = "Rosquinha gostosa boa para matar a fome" },
        ["salgadinho"] = { index = "salgadinho", nome = "Salgadinho",filtro = "food", type = "usar", funcao = false, descricao = "Salgadinho gostoso bom para matar a fome" },
        ["sanduiche"] = { index = "sanduiche", nome = "Sanduiche",filtro = "food", type = "usar", funcao = false, descricao = "Sanduiche feito com pão, presunto e quiejo bom para matar a fome" },
        ["chocolate"] = { index = "chocolate", nome = "Chocolate",filtro = "food", type = "usar", funcao = false, descricao = "Chocolate gostoso bom para matar a fome" },
        ["pao"] = { index = "pao", nome = "Pão",filtro = "food", type = "usar", funcao = false, descricao = "Pão saboroso bom para matar a fome" },
        ["pizza"] = { index = "pizza", nome = "Pizza",filtro = "food", type = "usar", funcao = false, descricao = "Pizza gostosa boa para matar a fome mama mia" },
        ["hotdog"] = { index = "hotdog", nome = "Cachorro-Quente",filtro = "food", type = "usar", funcao = false, descricao = "Cachorro-Quente Bom para matar a fome" },
        ["hamburger"] = { index = "hamburger", nome = "Hamburger",filtro = "food", type = "usar", funcao = false, descricao = "Hamburger MC" },

        ["cafe"] = { index = "cafe", nome = "Café",filtro = "soda", type = "usar", funcao = false, descricao = "Bebida refrescante feita de cola" },
        ["cerveja"] = { index = "cerveja", nome = "Cerveja", filtro = "soda", type = "usar", funcao = "Aumenta a sede em 10%", descricao = "Cerveja produzida no Alemanha com um gosto maravilhoso" },
        ["tequila"] = { index = "tequila", nome = "Tequila", filtro = "soda", type = "usar", funcao = "Aumenta a sede em 10%", descricao = "Tequila produzida em Cuba com um gosto maravilhoso" },
        ["vodka"] = { index = "vodka", nome = "Vodka", filtro = "soda", type = "usar", funcao = "Aumenta a sede em 10%", descricao = "Vodka produzida na Russia com um gosto maravilhoso" },
        ["whisky"] = { index = "whisky", nome = "Whisky", filtro = "soda", type = "usar", funcao = "Aumenta a sede em 10%", descricao = "Whisky produzida no Canadá com um gosto maravilhoso" },
        ["agua"] = { index = "agua", nome = "Agua",filtro = "soda", type = "usar", funcao = false, descricao = "Sua sede em uma garrafa" },
        ["conhaque"] = { index = "conhaque", nome = "Conhaque", filtro = "soda", type = "usar", funcao = "Aumenta a sede em 10%", descricao = "Conhaque produzida em Bordeaux na França com um gosto maravilhoso" },
        ["absinto"] = { index = "absinto", nome = "Absinto", filtro = "soda", type = "usar", funcao = "Aumenta a sede em 10%", descricao = "Absinto produzida na Suiça com um gosto maravilhoso" },
        ["energetico"] = { index = "energetico", nome = "Energético",filtro = "soda", type = "usar", funcao = "Deixa você energético", descricao = "Deixa você com a adrenalina alta, correndo muito rapido" },
        
        --====================================================================================================================================================--
        --========================================================== REMÉDIO ===================================================================================--
        --====================================================================================================================================================--

        ["bandagem"] = { index = "bandagem", nome = "Bandagem", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["dorflex"] = { index = "dorflex", nome = "Dorflex", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["cicatricure"] = { index = "cicatricure", nome = "Cicatricure", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["dipiroca"] = { index = "dipiroca", nome = "Dipiroca", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["nocucedin"] = { index = "nocucedin", nome = "Nocucedin", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["paracetanal"] = { index = "paracetanal", nome = "Paracetanal", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["decupramim"] = { index = "decupramim", nome = "Decupramim", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["buscopau"] = { index = "buscopau", nome = "Buscopau", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["navagina"] = { index = "navagina", nome = "Navagina", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["morfina"] = { index = "morfina", nome = "Morfina", filtro = "box", type = "usar", funcao = "Aumenta a vida em 10%", descricao = "Remédio dado por médicos, não se automedique" },
        ["xarope"] = { index = "xarope", nome = "Xarope", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["analdor"] = { index = "analdor", nome = "Analdor", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["sefodex"] = { index = "sefodex", nome = "Sefodex", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["nokusin"] = { index = "nokusin", nome = "Nokusin", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        ["glicoanal"] = { index = "glicoanal", nome = "Glicoanal", filtro = "box", type = "usar", funcao = "Cura a vida com o tempo", descricao = "Sua vida será curada com o tempo" },
        

        --====================================================================================================================================================--
        --========================================================== ITENS DE TRABALHO ===================================================================================--
        --====================================================================================================================================================--

        ["laranja"] = { index = "laranja", nome = "Laranja", filtro = "food", type = "usar", funcao = "Reduz a fome em 10%", descricao = "Deliciosa laranja, colhida em um pé maduro" },
        ["ferramenta"] = { index = "ferramenta", nome = "Ferramenta", filtro = "box", type = "usar", funcao = "Arruma o carro", descricao = "Ferramenta utlizada para arrumar o carro" },
        ["encomenda"] = { index = "encomenda", nome = "Encomenda", filtro = "box", type = "usar", funcao = false, descricao = "Encomenda entregue para o trabalho de entregador" },
        ["garrafavazia"] = { index = "garrafavazia", nome = "Garrafa de Leite Vazia", filtro = "soda", type = "usar", funcao = false, descricao = "Garrafa usada para o emprego de leiteiro"  },
        ["garrafadeleite"] = { index = "garrafadeleite", nome = "Garrafa de Leite", filtro = "soda", type = "usar", funcao = false, descricao = "Garrafa usada para o emprego de leiteiro"  },
        ["tora"] = { index = "tora", nome = "Tora de Madeira",filtro = "box", type = "usar",  funcao = false, descricao = "Tora de madeira recolhida no emprego de lenhador" },
        ["sacodelixo"] = { index = "sacodelixo", nome = "Saco de Lixo", filtro = "box", type = "usar", funcao = false, descricao = "Saco recolhido no trabalho de lixeiro" },

        ["isca"] = { index = "isca", nome = "Isca",filtro = "food", type = "usar", funcao = false, descricao = "Use para pescar peixes soborosos" },
        ["dourado"] = { index = "dourado", nome = "Dourado", filtro = "food",type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["corvina"] = { index = "corvina", nome = "Corvina",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["salmao"] = { index = "salmao", nome = "Salmão",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["pacu"] = { index = "pacu", nome = "Pacu",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["pintado"] = { index = "pintado", nome = "Pintado",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["pirarucu"] = { index = "pirarucu", nome = "Pirarucu",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["tilapia"] = { index = "tilapia", nome = "Tilápia",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["tucunare"] = { index = "tucunare", nome = "Tucunaré",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },
        ["lambari"] = { index = "lambari", nome = "Lambari",filtro = "food", type = "usar", funcao = false, descricao = "Peixe saboroso, pescado no mar" },

        ["graos"] = { index = "graos", nome = "Graos",filtro = "food", type = "usar", funcao = false, descricao = "Grãos refinados da plantação" },
        ["graosimpuros"] = { index = "graosimpuros", nome = "Graos Impuros",filtro = "food", type = "usar", funcao = false, descricao = "Grãos não refinados da plantação"},

        ["ferro"] = { index = "ferro", nome = "Ferro", filtro = "box", type = "usar", funcao = false, descricao = "Ferro bruto obtido em mineração" },
        ["prata"] = { index = "prata", nome = "Prata", filtro = "box", type = "usar", funcao = false, descricao = "Prata bruto obtido em mineração" },
        ["ouro"] = { index = "ouro", nome = "Min. Ouro", filtro = "box", type = "usar", funcao = false, descricao = "ouro bruto obtido em mineração" },
        ["diamante"] = { index = "diamante", nome = "Min. Diamante", filtro = "box", type = "usar", funcao = false, descricao = "Diamante bruto obtido em mineração" },
        

        --====================================================================================================================================================--
        --========================================================== FARMS ===================================================================================--
        --====================================================================================================================================================--

        ["pano"] = { index = "pano", nome = "Pano", filtro = "box", type = "usar" },
        ["linha"] = { index = "linha", nome = "Linha", filtro = "box", type = "usar" },
        ["etiqueta"] = { index = "etiqueta", nome = "Etiqueta", filtro = "box", type = "usar" },
        ["alvejante"] = { index = "alvejante", nome = "Alvejante", filtro = "box", type = "usar" },
        ["caixa"] = { index = "caixa", nome = "Caixa", filtro = "box", type = "usar" },
        ["fioseletricos"] = { index = "fioseletricos", nome = "Fios Elétricos", filtro = "box", type = "usar" },
        ["papel"] = { index = "papel", nome = "Papel", filtro = "box", type = "usar" },
        ["notafiscalfalsa"] = { index = "notafiscalfalsa", nome = "Nota Fiscal Falsa", filtro = "box", type = "usar" },


        --====================================================================================================================================================--
        --========================================================== DESMANCHE ===================================================================================--
        --====================================================================================================================================================--

        ["discofreio"] = { index = "discofreio", nome = "Disco de Freio", filtro = "box", type = "usar", funcao = false, descricao = "Disco de Freio Desmanchad0" },
        ["volante"] = { index = "volante", nome = "Volante de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Volante de Carro Desmanchado" },
        ["motorcarro"] = { index = "motorcarro", nome = "Motor de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Motor de Carro Desmanchado" },
        ["rodacarro"] = { index = "rodacarro", nome = "Roda de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Roda de Carro Desmanchada" },
        ["portacarro"] = { index = "portacarro", nome = "Porta de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Porta de Carro Desmanchada" },
        ["motormoto"] = { index = "motormoto", nome = "Motor de Moto", filtro = "box", type = "usar", funcao = false, descricao = "Motor de Moto Desmanchado" },
        ["rodamoto"] = { index = "rodamoto", nome = "Roda de Moto", filtro = "box", type = "usar", funcao = false, descricao = "Roda de Moto Desmanchada" },

        ["discofreioimport"] = { index = "discofreioimport", nome = "Disco de Freio", filtro = "box", type = "usar", funcao = false, descricao = "Disco de Freio Desmanchad0" },
        ["volanteimport"] = { index = "volanteimport", nome = "Volante de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Volante de Carro Desmanchado" },
        ["motorcarroimport"] = { index = "motorcarroimport", nome = "Motor de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Motor de Carro Desmanchado" },
        ["rodacarroimport"] = { index = "rodacarroimport", nome = "Roda de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Roda de Carro Desmanchada" },
        ["portacarroimport"] = { index = "portacarroimport", nome = "Porta de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Porta de Carro Desmanchada" },
        ["motormotoimport"] = { index = "motormotoimport", nome = "Motor de Moto", filtro = "box", type = "usar", funcao = false, descricao = "Motor de Moto Desmanchado" },
        ["rodamotoimport"] = { index = "rodamotoimport", nome = "Roda de Moto", filtro = "box", type = "usar", funcao = false, descricao = "Roda de Moto Desmanchada" },

        ["discofreioexclusive"] = { index = "discofreioexclusive", nome = "Disco de Freio", filtro = "box", type = "usar", funcao = false, descricao = "Disco de Freio Desmanchad0" },
        ["volanteexclusive"] = { index = "volanteexclusive", nome = "Volante de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Volante de Carro Desmanchado" },
        ["motorcarroexclusive"] = { index = "motorcarroexclusive", nome = "Motor de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Motor de Carro Desmanchado" },
        ["rodacarroexclusive"] = { index = "rodacarroexclusive", nome = "Roda de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Roda de Carro Desmanchada" },
        ["portacarroexclusive"] = { index = "portacarroexclusive", nome = "Porta de Carro", filtro = "box", type = "usar", funcao = false, descricao = "Porta de Carro Desmanchada" },
        ["motormotoexclusive"] = { index = "motormotoexclusive", nome = "Motor de Moto", filtro = "box", type = "usar", funcao = false, descricao = "Motor de Moto Desmanchado" },
        ["rodamotoexclusive"] = { index = "rodamotoexclusive", nome = "Roda de Moto", filtro = "box", type = "usar", funcao = false, descricao = "Roda de Moto Desmanchada" },
        --====================================================================================================================================================--
        --========================================================== DROGAS ===================================================================================--
        --====================================================================================================================================================--
        
        ["maconha"] = { index = "maconha", nome = "Maconha", filtro = "box", type = "usar", funcao = "Deixa você alucinado", descricao = "Droga ilicita que deixa você louco" },
        ["adubo"] = { index = "adubo", nome = "Adubo", filtro = "box", type = "usar", funcao = false, descricao = "Adubo para plantar alimentos ou drogas" },
        ["cannabis"] = { index = "cannabis", nome = "Cannabis", filtro = "box", type = "usar", funcao = "Deixa você alucinado", descricao = "Droga ilicita que deixa você louco" },
        
        ["plantademaconha"] = { index = "plantademaconha", nome = "Pé de Maconha", filtro = "box", type = "usar", funcao = "Deixa você alucinado", descricao = "Pé de Maconha para Colher" },
        ["fertilizante"] = { index = "fertilizante", nome = "Fertilizante", filtro = "box", type = "usar", funcao = false, descricao = "Fertilizante para plantar alimentos ou drogas" },
        
        ["folhadecoca"] = { index = "folhadecoca", nome = "Folha de Coca", filtro = "box", type = "usar", funcao = false, descricao = "Folha de cocaina" },
        ["pastadecoca"] = { index = "pastadecoca", nome = "Pasta de Coca", filtro = "box", type = "usar", funcao = false, descricao = "Pasta de cocaina" },
        ["cocaina"] = { index = "cocaina", nome = "Cocaína", type = "usar", filtro = "box", funcao = "Deixa você alucinado", descricao = "Droga ilicita que deixa você louco" },

        ["lsd"] = { index = "lsd", nome = "LSD", filtro = "box", type = "usar", funcao = "Deixa você alucinado", descricao = "Droga ilicita que deixa você louco"  },
        
        ["acidobateria"] = { index = "acidobateria", nome = "Ácido de Bateria", filtro = "box", type = "usar" },
        ["anfetamina"] = { index = "anfetamina", nome = "Anfetamina", filtro = "box", type = "usar", funcao = "Deixa você alucinado", descricao = "Droga ilicita que deixa você louco"  },
        ["metanfetamina"] = { index = "metanfetamina", nome = "Metanfetamina", filtro = "box", type = "usar", funcao = "Deixa você alucinado", descricao = "Droga ilicita que deixa você louco"  },
        
        --====================================================================================================================================================--
        --========================================================== ITENS DE AÇÃO ===================================================================================--
        --====================================================================================================================================================--

        ["serra"] = { index = "serra", nome = "Serra",filtro = "box", type = "usar", funcao = false, descricao = "Serra utlizada para abrir cofres"  },
        ["pendrive"] = { index = "pendrive", nome = "Pendrive", filtro = "box", type = "usar", funcao = false, descricao = "Pendrive com informações, pode ser usado para roubar lojas" },
        ["furadeira"] = { index = "furadeira", nome = "Furadeira",filtro = "box", type = "usar", funcao = false, descricao = "Furadeira utlizada para abrir cofres"  },
        ["notebook"] = { index = "notebook", nome = "Notebook", filtro = "box", type = "usar", funcao = "Se conectar com a internet", descricao = "Se conecte com a internet"  },
        ["c4"] = { index = "c4", nome = "C4", filtro = "box", type = "usar", funcao = false, descricao = "C4 utilizada para explodir banco"  },
        ["keycard"] = { index = "keycard", nome = "Keycard", filtro = "box", type = "usar", funcao = false, descricao = "Keycard para abrir as portas do seu coraçao" },
        
        --====================================================================================================================================================--
        --========================================================== ITENS ROUBADOS ===================================================================================--
        --====================================================================================================================================================--

        ["relogioroubado"] = { index = "relogioroubado", nome = "Relógio Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Relógio roubado de pessoa na rua" },
        ["pulseiraroubada"] = { index = "pulseiraroubada", nome = "Pulseira Roubada", filtro = "box", type = "usar", funcao = false, descricao = "Pulseira roubado de pessoa na rua" },
        ["anelroubado"] = { index = "anelroubado", nome = "Anel Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Anel roubado de pessoa na rua" },
        ["colarroubado"] = { index = "colarroubado", nome = "Colar Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Colar roubado de pessoa na rua" },
        ["brincoroubado"] = { index = "brincoroubado", nome = "Brinco Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Brinco roubado de pessoa na rua" },
        ["carteiraroubada"] = { index = "carteiraroubada", nome = "Carteira Roubada", filtro = "box", type = "usar", funcao = false, descricao = "Carteira roubado de pessoa na rua" },
        ["tabletroubado"] = { index = "tabletroubado", nome = "Tablet Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Tablet roubado de pessoa na rua" },
        ["sapatosroubado"] = { index = "sapatosroubado", nome = "Sapatos Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Sapatos roubado de pessoa na rua" },
        ["carregadorroubado"] = { index = "carregadorroubado", nome = "Carregador Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Carregador roubado de pessoa na rua" },
        ["perfumeroubado"] = { index = "perfumeroubado", nome = "Perfume Roubado", filtro = "box", type = "usar", funcao = false, descricao = "Perfume roubado de pessoa na rua" },
        ["maquiagemroubada"] = { index = "maquiagemroubada", nome = "Maquiagem Roubada", filtro = "box", type = "usar", funcao = false, descricao = "Maquiagem roubada de pessoa na rua" },
        ["kitgps"] = { index = "kitgps", nome = "KIT de GPS", filtro = "kit", type = "usar", funcao = "Instalar GPS no Veículo", descricao = "KIT de GPS para Veículos" },
        ["removegps"] = { index = "removegps", nome = "Removedor de GPS", filtro = "kit", type = "usar", funcao = "Remove o GPS do Veículo se houver", descricao = "Remove/Desativa o GPS do veículo" },
        --====================================================================================================================================================--
        --========================================================== ARMAS ===================================================================================--
        --====================================================================================================================================================--

        ["wbody|WEAPON_DAGGER"] = { index = "adaga", nome = "Adaga", type = "equipar" },
        ["wbody|WEAPON_BAT"] = { index = "beisebol", nome = "Taco de Beisebol", type = "equipar" },
        ["wbody|WEAPON_BOTTLE"] = { index = "garrafa", nome = "Garrafa", type = "equipar" },
        ["wbody|WEAPON_CROWBAR"] = { index = "cabra", nome = "Pé de Cabra", type = "equipar" },
        ["wbody|WEAPON_FLASHLIGHT"] = { index = "lanterna", nome = "Lanterna", type = "equipar" },
        ["wbody|WEAPON_GOLFCLUB"] = { index = "golf", nome = "Taco de Golf", type = "equipar" },
        ["wbody|WEAPON_HAMMER"] = { index = "martelo", nome = "Martelo", type = "equipar" },
        ["wbody|WEAPON_HATCHET"] = { index = "machado", nome = "Machado", type = "equipar" },
        ["wbody|WEAPON_KNUCKLE"] = { index = "ingles", nome = "Soco-Inglês", type = "equipar" },
        ["wbody|WEAPON_KNIFE"] = { index = "faca", nome = "Faca", type = "equipar" },
        ["wbody|WEAPON_MACHETE"] = { index = "machete", nome = "Machete", type = "equipar" },
        ["wbody|WEAPON_SWITCHBLADE"] = { index = "canivete", nome = "Canivete", type = "equipar" },
        ["wbody|WEAPON_NIGHTSTICK"] = { index = "cassetete", nome = "Cassetete", type = "equipar" },
        ["wbody|WEAPON_WRENCH"] = { index = "grifo", nome = "Chave de Grifo", type = "equipar"},
        ["wbody|WEAPON_BATTLEAXE"] = { index = "batalha", nome = "Machado de Batalha", type = "equipar"},
        ["wbody|WEAPON_POOLCUE"] = { index = "sinuca", nome = "Taco de Sinuca", type = "equipar" },
        ["wbody|WEAPON_STONE_HATCHET"] = { index = "pedra", nome = "Machado de Pedra", type = "equipar"},
        ["wbody|WEAPON_PISTOL"] = { index = "m1911", nome = "M1911", type = "equipar" },
        ["wbody|WEAPON_PISTOL_MK2"] = { index = "fiveseven", nome = "FN Five Seven", type = "equipar"},
        ["wbody|WEAPON_COMBATPISTOL"] = { index = "glock", nome = "Glock 19", type = "equipar"  },
        ["wbody|WEAPON_STUNGUN"] = { index = "taser", nome = "Taser", type = "equipar" },
        ["wbody|WEAPON_SNSPISTOL"] = { index = "hkp7m10", nome = "HK P7M10", type = "equipar"  },
        ["wbody|WEAPON_VINTAGEPISTOL"] = { index = "m1922", nome = "M1922", type = "equipar" },
        ["wbody|WEAPON_REVOLVER"] = { index = "magnum44", nome = "Magnum 44", type = "equipar" },
        ["wbody|WEAPON_REVOLVER_MK2"] = { index = "magnum357", nome = "Magnum 357", type = "equipar" },
        ["wbody|WEAPON_MUSKET"] = { index = "winchester22", nome = "Winchester 22", type = "equipar" },
        ["wbody|WEAPON_FLARE"] = { index = "sinalizador", nome = "Sinalizador", type = "equipar" },
        ["wbody|GADGET_PARACHUTE"] = { index = "paraquedas", nome = "Paraquedas", type = "equipar" },
        ["wbody|WEAPON_FIREEXTINGUISHER"] = { index = "extintor", nome = "Extintor", type = "equipar" },
        ["wbody|WEAPON_MICROSMG"] = { index = "uzi", nome = "Uzi", type = "equipar" },
        ["wbody|WEAPON_SMG"] = { index = "mp5", nome = "MP5", type = "equipar"},
        ["wbody|WEAPON_ASSAULTSMG"] = { index = "mtar21", nome = "MTAR-21", type = "equipar" },
        ["wbody|WEAPON_COMBATPDW"] = { index = "sigsauer", nome = "Sig Sauer MPX", type = "equipar"},
        ["wbody|WEAPON_PUMPSHOTGUN_MK2"] = { index = "remington", nome = "Remington 870", type = "equipar"},
        ["wbody|WEAPON_CARBINERIFLE"] = { index = "m4a1", nome = "M4A1", type = "equipar"},
        ["wbody|WEAPON_ASSAULTRIFLE"] = { index = "ak103", nome = "AK-47", type = "equipar" },
        ["wbody|WEAPON_PETROLCAN"] = { index = "gasolina", nome = "Galão de Gasolina", type = "equipar" },	
        ["wbody|WEAPON_GUSENBERG"] = { index = "thompson", nome = "Thompson", type = "equipar"},		
        ["wbody|WEAPON_MACHINEPISTOL"] = { index = "tec9", nome = "Tec-9", type = "equipar"},
        ["wbody|WEAPON_COMPACTRIFLE"] = { index = "aks", nome = "AKS", type = "equipar"},
        ["wbody|WEAPON_CARBINERIFLE_MK2"] = { index = "carbinemk2", nome = "Rifle Especial", type = "equipar" },
        ["wbody|WEAPON_HEAVYPISTOL"] = { index = "heavypistol", nome = "Pistola Pesada", type = "equipar" },
        ["wbody|WEAPON_SMG_MK2"] = { index = "smgmk2", nome = "SMG Compacta", type = "equipar" },
        ["wbody|WEAPON_BULLPUPSHOTGUN"] = { index = "bullpupshotgun", nome = "Bullpup Shotgun", type = "equipar" },
        ["wbody|WEAPON_SPECIALCARBINE"] = { index = "g36", nome = "G36", type = "equipar" },

        ["wammo|WEAPON_PISTOL"] = { index = "m-m1911", nome = "M.M1911", type = "recarregar", filtro = "arma", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma"  },
        ["wammo|WEAPON_PISTOL_MK2"] = { index = "m-fiveseven", nome = "M.FN Five Seven", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_COMBATPISTOL"] = { index = "m-glock", nome = "M.Glock 19", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_STUNGUN"] = { index = "m-taser", nome = "M.Taser", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_SNSPISTOL"] = { index = "m-hkp7m10", nome = "M.HK P7M10", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_VINTAGEPISTOL"] = { index = "m-m1922", nome = "M.M1922", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_REVOLVER"] = { index = "m-magnum44", nome = "M.Magnum 44", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_REVOLVER_MK2"] = { index = "m-magnum357", nome = "M.Magnum 357", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_MUSKET"] = { index = "m-winchester22", nome = "M.Winchester 22", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_FLARE"] = { index = "m-sinalizador", nome = "M.Sinalizador", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|GADGET_PARACHUTE"] = { index = "m-paraquedas", nome = "M.Paraquedas", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_FIREEXTINGUISHER"] = { index = "m-extintor", nome = "M.Extintor", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_MICROSMG"] = { index = "m-uzi", nome = "M.Uzi", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_SMG"] = { index = "m-mp5", nome = "M.MP5", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_ASSAULTSMG"] = { index = "m-mtar21", nome = "M.MTAR-21", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_COMBATPDW"] = { index = "m-sigsauer", nome = "M.Sig Sauer MPX", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_PUMPSHOTGUN"] = { index = "m-shotgun", nome = "M.Shotgun", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_PUMPSHOTGUN_MK2"] = { index = "m-remington", nome = "M.Remington 870", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_CARBINERIFLE"] = { index = "m-m4a1", nome = "M.M4A1", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_ASSAULTRIFLE"] = { index = "m-ak103", nome = "M.AK-47", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_GUSENBERG"] = { index = "m-thompson", nome = "M.Thompson", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_MACHINEPISTOL"] = { index = "m-tec9", nome = "M.Tec-9", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_COMPACTRIFLE"] = { index = "m-aks", nome = "M.AKS", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_CARBINERIFLE_MK2"] = { index = "m-carbinemk2", nome = "Munição Rifle Especial", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_HEAVYPISTOL"] = { index = "m-heavypistol", nome = "Munição Pistola Pesada", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_SMG_MK2"] = { index = "m-smgmk2", nome = "Munição SMG Compacta", filtro = "arma", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_BULLPUPSHOTGUN"] = { index = "m-bullpupshotgun", nome = "Munição BullpupShotgun", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },
        ["wammo|WEAPON_PETROLCAN"] = { index = "combustivel", nome = "Combustível", filtro = "arma", type = "recarregar", funcao = "Recarrega as munição da arma", descricao = "Recarregue as munições da sua arma" },

        --========================================================== ATTACHS ===================================================================================--

        ["empunhadura"] = { index = "empunhadura", nome = "Empunhadura", type = "equipar" },
        ["silenciador"] = { index = "silenciador", nome = "Silenciador", type = "equipar" },
        ["pente"] = { index = "pente", nome = "Pente", type = "equipar" },
        ["skin"] = { index = "skin", nome = "Skin", type = "equipar" },
        ["lanterna"] = { index = "lanterna", nome = "Lanterna Tática", type = "equipar" },
        ["mira"] = { index = "mira", nome = "Mira Tática", type = "equipar" },
        ["spray"] = { index = "spray", nome = "Spray", type = "equipar" },

        --========================================================== PRODUÇÃO ===================================================================================--

        ["capsula"] = { index = "capsula", nome = "Cápsula", type = "usar" },
        ["polvora"] = { index = "polvora", nome = "Pólvora", type = "usar" },
        ["carbono"] = { index = "carbono", nome = "Carbono", type = "usar" },

        ["corpo-assaultsmg"] = { index = "corpo-assaultsmg", nome = "Corpo MTAR 21", type = "usar" },
        ["corpo-pistolmk2"] = { index = "corpo-pistolmk2", nome = "Corpo Pistola MK2", type = "usar" },
        ["corpo-microsmg"] = { index = "corpo-microsmg", nome = "Corpo Micro SMG", type = "usar" },
        ["corpo-ak47"] = { index = "corpo-ak47", nome = "Corpo AK-47", type = "usar" },
        ["corpo-mp5"] = { index = "corpo-mp5", nome = "Corpo MP5", type = "usar" },
        ["corpo-revolver"] = { index = "corpo-revolver", nome = "Corpo Revolver", type = "usar" },
        ["corpo-thompson"] = { index = "corpo-thompson", nome = "Corpo Thompson", type = "usar" },
        ["placademetal"] = { index = "placademetal", nome = "Placa de Metal", type = "usar" },
        ["mola"] = { index = "mola", nome = "Mola", type = "usar" },
        ["pecadearma"] = { index = "pecadearma", nome = "Peça de Arma", filtro = "box", type = "usar", funcao = false, descricao = "Peça de arma, mais um pouco você faz sua arma" },
        ["armacaodearma"] = { index = "armacaodearma", nome = "Armação de Arma", filtro = "box", type = "usar", funcao = false, descricao = "Armação de arma, mais um pouco você faz sua arma" }

    }
}