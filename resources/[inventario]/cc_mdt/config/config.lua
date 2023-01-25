--[ VARIAVEL ]----------------------------------------------------------------------------------------------------------------

Config = {}

--[ LICENÇA ]--------------------------------------------------------------------------------------------------------------------

Config.licenca = '727674669280395286-cc_mdt-txgfi' -- Licença do script; Não lembra? Envie no privado de nosso bot Carioca Auth, o comando: .subinfo !

--[ CONFIGURAÇÃO ]----------------------------------------------------------------------------------------------------------------
--[ LOGO ]--------------------------------------------------------------------------------------------------------------------

Config.logo = 'https://cdn.discordapp.com/attachments/1062810344587800667/1063668474905362482/2171139150173.560c974e07270.png'

--[ WEBHOOKS ]--------------------------------------------------------------------------------------------------------------------

Config.webhookCriarBoletim = 'https://discord.com/api/webhooks/1066502115926745099/4nVGywX8pfp-9b0lCgxm0ddmqCFmuOLE3DvVV-mLrvuC53rRafudsVSp0sS6R-W9TE1H' -- Webhook para criação de boletins;

Config.webhookDelBoletim = 'https://discord.com/api/webhooks/1066502115926745099/4nVGywX8pfp-9b0lCgxm0ddmqCFmuOLE3DvVV-mLrvuC53rRafudsVSp0sS6R-W9TE1H' -- Webhook para o deletamento de boletins de ocorrência;

Config.webhookPrender = 'https://discord.com/api/webhooks/1066502115926745099/4nVGywX8pfp-9b0lCgxm0ddmqCFmuOLE3DvVV-mLrvuC53rRafudsVSp0sS6R-W9TE1H' -- Webhook quando um boletim for finalizado e o criminoso preso;

Config.webhookDelCadastro = 'https://discord.com/api/webhooks/1066502115926745099/4nVGywX8pfp-9b0lCgxm0ddmqCFmuOLE3DvVV-mLrvuC53rRafudsVSp0sS6R-W9TE1H' -- Webhook quando um administrador, deletar um cadastro;

--[ COMANDO ]--------------------------------------------------------------------------------------------------------------------

Config.comandoAbrir = 'mdt' -- Comando para abrir o Tablet;

--[ PERMISSOES ]--------------------------------------------------------------------------------------------------------------------

Config.permissaoPolicial = 'policia.permissao' -- Permissão para abrir o MDT;

Config.permissaoAdministrativa = 'admin.permissao' -- Permissão que consiguirá acessar a pagina Gerenciar Oficiais;

--[ PRENDER SOMENTE DENTRO DE ZONA ]-------------------------------------------------------------------------------------------------

Config.enablePrenderEmZona = false -- Somente será possível finalizar um boletim dentro de uma zona;

Config.coordenadaZona = vector3(0,0,0) -- Coodernada da zona;

Config.raioZona = 20 -- Raio da zona;

--[ PATENTE ]--------------------------------------------------------------------------------------------------------------------

Config.gtypePatente = 'hie' -- Gtype de promoções;

--[ MAPA ]--------------------------------------------------------------------------------------------------------------------

Config.tipoDeMapa = 'Mainmap'

--[ PERSONALIZAÇÃO ]--------------------------------------------------------------------------------------------------------------------

Config.carroCutScene = 'dusterrp1' -- Carro em que será spawnado, durante a Cut Scene da prisão;

Config.roupaDetento = { -- Roupa em que o prisioneiro será vestido; Após o fim de sua sentença, ela será retirada;
        [1885233650] = { -- Roupa Masculina;
                [1] = {0,0,2},
                [3] = {5,0,1},
                [4] = {7,15,1},
                [5] = {0,0,1},
                [6] = {27,0,1},
                [7] = {0,0,2},
                [8] = {15,0,1},
                [9] = {42,0,2},
                [10] = {0,0,2},
                [11] = {5,0,1}
            },
        [-1667301416] = { -- Roupa Femininas;
                [1] = {0,0,0},
                [3] = {14,0,1},
                [4] = {3,15,1},
                [5] = {0,0,0},
                [6] = {26,0,1},
                [7] = {0,0,0},
                [8] = {14,0,1},
                [9] = {0,0,0},
                [10] = {0,0,0},
                [11] = {73,0,1}
        }
}

--[ AVANÇADO ]--------------------------------------------------------------------------------------------------------------------
--[ UPLOAD IMAGENS ]---------------------------------------------------------------------------------------------------------------------

Config.qualidadeDoUpload = 0.1 -- Qualidade de upload. Quanto mais baixo, mais rapido será, mas sua qualidade irá diminuir;

--[ PRENDER ]---------------------------------------------------------------------------------------------------------------------

Config.penaMaxima = 90 -- Pena maxima permitida;

--[ URL IMAGEM CARROS ]------------------------------------------------------------------------------------------------------------------

Config.urlImagemCarros = 'http://20.195.166.201/vrp_imagens/' -- URL em que seus carros ficam hospedados;

--[ CODIGO PENAL ]--------------------------------------------------------------------------------------------------------------

Config.codigoPenal = {
        {
                ["descricao"] = "Homicidio Doloso Qualificado", -- Descrição do crime;
                ["pena"] = 40, -- Pena do crime;
                ["multa"] = 30000, -- Multa do crime;
                ["fianca"] = false -- Fiança do crime; Caso for inafiançável, deve se colocar: false ;
        },
        {
                ["descricao"] = "Homicidio Doloso",
                ["pena"] = 30,
                ["multa"] = 25000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Tentativa de Homicidio",
                ["pena"] = 20,
                ["multa"] = 20000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Homicidio Culposo",
                ["pena"] = 20,
                ["multa"] = 15000,
                ["fianca"] = 100000
        },
        {
                ["descricao"] = "Homicidio Culposo no Transito",
                ["pena"] = 15,
                ["multa"] = 10000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Lesão corporal",
                ["pena"] = 15,
                ["multa"] = 5000,
                ["fianca"] = 62500
        },
        {
                ["descricao"] = "Terrorismo",
                ["pena"] = 30,
                ["multa"] = 20000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Sequestro",
                ["pena"] = 35,
                ["multa"] = 30000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Desmanche de Carros",
                ["pena"] = 25,
                ["multa"] = 25000,
                ["fianca"] = 125000
        },
        {
                ["descricao"] = "Furto",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 75000
        },
        {
                ["descricao"] = "Roubo de Veículos",
                ["pena"] = 20,
                ["multa"] = 20000,
                ["fianca"] = 100000
        },
        {
                ["descricao"] = "Roubo",
                ["pena"] = 18,
                ["multa"] = 15000,
                ["fianca"] = 87500
        },
        {
                ["descricao"] = "Roubo a Banco",
                ["pena"] = 50,
                ["multa"] = 50000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Roubo a Loja",
                ["pena"] = 25,
                ["multa"] = 20000,
                ["fianca"] = 112500
        },
        {
                ["descricao"] = "Roubo Joalheiria",
                ["pena"] = 35,
                ["multa"] = 35000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Furto a Caixa eletronico",
                ["pena"] = 15,
                ["multa"] = 15000,
                ["fianca"] = 75000
        },
        {
                ["descricao"] = "Posse de Dinheiro sujo",
                ["pena"] = 20,
                ["multa"] = 40000,
                ["fianca"] = false
        },
        {
                ["descricao"] = "Posse de peças de armas",
                ["pena"] = 15,
                ["multa"] = 25000,
                ["fianca"] = 75000
        },
        {
                ["descricao"] = "Tráfico de Armas",
                ["pena"] = 50,
                ["multa"] = 50000,
                ["fianca"] = 250000
        },
        {
                ["descricao"] = "Porte de Arma Ilegal",
                ["pena"] = 25,
                ["multa"] = 25000,
                ["fianca"] = 125000
        },
        {
                ["descricao"] = "Trafico de Munição",
                ["pena"] = 40,
                ["multa"] = 40000,
                ["fianca"] = 200000
        },
        {
                ["descricao"] = "Posse de Componentes Narcoticos",
                ["pena"] = 15,
                ["multa"] = 20000,
                ["fianca"] = 75000
        },
        {
                ["descricao"] = "Tráfico de Drogas",
                ["pena"] = 40,
                ["multa"] = 30000,
                ["fianca"] = 200000
        },
        {
                ["descricao"] = "Direção Perigosa",
                ["pena"] = 0,
                ["multa"] = 20000,
                ["fianca"] = false
        }
}

--[ ATENUANTES ]--------------------------------------------------------------------------------------------------------------
    
Config.atenuantesPenal = {
        {
                ["descricao"] = "Réu Primário", -- Descrição do atenuante;
                ["porcentagem"] = 40 -- Porcentagem que será reduzida do crime;
        },
        {
                ["descricao"] = "Presença de um Advogado;",
                ["porcentagem"] = 30
        },
        {
                ["descricao"] = "Colaboração com a investigação;",
                ["porcentagem"] = 50
        }
}

--[ AGRAVANTES ]--------------------------------------------------------------------------------------------------------------
    
Config.agravantesPenal = {
        {
                ["descricao"] = "Resistência a prisão;", -- Descrição do agravante;
                ["porcentagem"] = 30 -- Porcentagem que será aumentada do crime;
        },
        {
                ["descricao"] = "Criminoso reincidente;",
                ["porcentagem"] = 20
        }
}