local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("harry_craft",src)
Proxy.addInterface("harry_craft",src)

vCLIENT = Tunnel.getInterface("harry_craft")
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config = {}
config.token = "6efb3b8d332c777b0f9a762773b24528"  -- configure aqui seu token [ DEFINA-SEU-TOKEN-AQUI ]
config.delayCraft = 5 -- Segundos ( Delay de cada mesa de craft, para evitar floods )
config.weebdump = "" -- WEEBHOOK QUANDO NEGO TENTAR DUMPAR DESLIGANDO A INTERNET. 

config.weebhook = {
    logo = "https://cdn.discordapp.com/attachments/1062810344587800667/1063668474905362482/2171139150173.560c974e07270.png", -- LOGO do Servidor
    color =  6356736,
    footer = "REVOLUÇÃO ROLEPLAY",
}

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- CONFIG CRAFT
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.table = {
    ["FamiliaFS"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215305832288296/cfGivzgTRHBX77Sjxeo-jfXFt_NeQbsAXrgbJLYKSPoM3qGFKPpXZwZA0xB6PL39AGvV", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["m-ak"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "MUNI AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 40, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsula" , amount = 50 },
                }
            },  

            ["m-fiveseven"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI FIVE", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 40, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsula" , amount = 20 },
                }
            },                 

            ["m-uzi"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_MICROSMG", -- SPAWN DO ITEM
                nameItem = "MUNI UZI", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 30, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsula" , amount = 30 },
                }
            },  

            ["m-mtar"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_ASSAULTSMG", -- SPAWN DO ITEM
                nameItem = "MUNI MTAR", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 30, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsula" , amount = 50 },
                }
            },    
            
            ["m-thompson"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_GUSENBERG", -- SPAWN DO ITEM
                nameItem = "MUNI THOMPSON", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 20, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsula" , amount = 50 },
                }
            },
         }
    },  
    
    
    ["Cartel"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discord.com/api/webhooks/995436414869196820/BGloTgixcbhTMQEY5pLfbmll6eQuzdEMY5pMiGfGJ0tkTERBJg4FvmwHAG6dOpNf1Kti", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["ak47"] = { -- IMAGEM DO ITEM
                spawnID = "wbody|WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "armacaodearma" , amount = 55 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "pecadearma" , amount = 60 },
                }
            },

            ["fiveseven"] = { -- IMAGEM DO ITEM
                spawnID = "wbody|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "FIVE", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "armacaodearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "pecadearma" , amount = 40 },
                }
            },  

            ["uzi"] = { -- IMAGEM DO ITEM
                spawnID = "wbody|WEAPON_MICROSMG", -- SPAWN DO ITEM
                nameItem = "UZI", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "armacaodearma" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "pecadearma" , amount = 50 },
                }
            },    
            
            ["thompson"] = { -- IMAGEM DO ITEM
                 spawnID = "wbody|WEAPON_GUSENBERG", -- SPAWN DO ITEM
                 nameItem = "THOMPSON", -- NOME DO ITEM
                 maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                 customAmount = 1, -- Caso queira colocar um valor x por unidade.
                 tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                 anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                 requires = {
                     { item = "armacaodearma" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                     { item = "pecadearma" , amount = 80 },
                 }
             },      
            
            ["mtar21"] = { -- IMAGEM DO ITEM
                spawnID = "wbody|WEAPON_ASSAULTSMG", -- SPAWN DO ITEM
                nameItem = "MTAR", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pecadearma" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "armacaodearma" , amount = 40 },
                }
            },                 
        }
    },   
    
    ["DK"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215258470187108/GwwZxcIbVwU3IOtPee4QHMBs6_5nKZ6ZBnNau4w7fXs6s5Y5NxemQU7_pMO2IvnWhR7T", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["ferramenta"] = { -- IMAGEM DO ITEM
                spawnID = "ferramenta", -- SPAWN DO ITEM
                nameItem = "Ferramenta Desmanche", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "fioseletricos" , amount = 10 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "ferro" , amount = 8 },
                }
            },
            
            ["lockpick"] = { -- IMAGEM DO ITEM
                spawnID = "lockpick", -- SPAWN DO ITEM
                nameItem = "LockPick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "fioseletricos" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "ferro" , amount = 18 },
                }
            },  

            ["masterpick"] = { -- IMAGEM DO ITEM
                spawnID = "masterpick", -- SPAWN DO ITEM
                nameItem = "MasterPick", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "fioseletricos" , amount = 40 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "ferro" , amount = 36 },
                }
            },
        
        }
    },        

    ["Vanilla"] = { -- NUNCA REPITIR O MESMO NOME
    armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
    weebhook = "https://discordapp.com/api/webhooks/979215132074856538/3S2po4JegFb0Oi6qzbXLY_AUCZ6K60y_Kx8DG10hfTfjJzgD5yKXAcCAoePyiyj-KZzM", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

    craft = {
        
        ["notafiscalfalsa"] = { -- IMAGEM DO ITEM
            spawnID = "notafiscalfalsa", -- SPAWN DO ITEM
            nameItem = "Nota Fiscal Falsa", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "papel" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "alvejante" , amount = 50 },
            }
        },  

        ["algemas"] = { -- IMAGEM DO ITEM
        spawnID = "algemas", -- SPAWN DO ITEM
        nameItem = "Algemas", -- NOME DO ITEM
        maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
        customAmount = 1, -- Caso queira colocar um valor x por unidade.
        tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
        anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        requires = {
            { item = "ferro" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        }
    },

        ["colete"] = { -- IMAGEM DO ITEM
            spawnID = "colete", -- SPAWN DO ITEM
            nameItem = "Colete Balistico", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "linha" , amount = 20 },
                { item = "pano" , amount = 15 },
            }
        },  

        ["c4"] = { -- IMAGEM DO ITEM
            spawnID = "c4", -- SPAWN DO ITEM
            nameItem = "C4 Explosivo", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "fioseletricos" , amount = 15 },
            }
        },                 

        ["capuz"] = { -- IMAGEM DO ITEM
            spawnID = "capuz", -- SPAWN DO ITEM
            nameItem = "Capuz", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "pano" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "linha" , amount = 12 },
            }
        },  
        ["pendrive"] = { -- IMAGEM DO ITEM
            spawnID = "pendrive", -- SPAWN DO ITEM
            nameItem = "Pendrive", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "fioseletricos" , amount = 12 },
            }
        },  

        
    }
},  

["Yakuza"] = { -- NUNCA REPITIR O MESMO NOME
    armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
    weebhook = "https://discordapp.com/api/webhooks/979215660527792148/BdK0bBpDN2Lg5uBmFCIn0EGm_yivfRZLb4rzOrHqwX8Hyk-DUz1AdDnQcet96LUIJiyx", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

    craft = {

        ["algemas"] = { -- IMAGEM DO ITEM
        spawnID = "algemas", -- SPAWN DO ITEM
        nameItem = "Algemas", -- NOME DO ITEM
        maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
        customAmount = 1, -- Caso queira colocar um valor x por unidade.
        tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
        anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        requires = {
            { item = "ferro" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
        }
    },

         ["ak47"] = { -- IMAGEM DO ITEM
            spawnID = "wbody|WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
            nameItem = "AK-47", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar    um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "armacaodearma" , amount = 55 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "pecadearma" , amount = 60 },
            }
        },

        ["fiveseven"] = { -- IMAGEM DO ITEM
            spawnID = "wbody|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
            nameItem = "FIVE", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "armacaodearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "pecadearma" , amount = 40 },
            }
        },  

    ["m-ak"] = { -- IMAGEM DO ITEM
        spawnID = "wammo|WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
        nameItem = "MUNI AK-47", -- NOME DO ITEM
        maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
        customAmount = 40, -- Caso queira colocar um valor x por unidade.
        tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
        anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        requires = {
            { item = "polvora" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            { item = "capsula" , amount = 50 },
        }
    },  

    ["m-fiveseven"] = { -- IMAGEM DO ITEM
        spawnID = "wammo|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
        nameItem = "MUNI FIVE", -- NOME DO ITEM
        maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
        customAmount = 40, -- Caso queira colocar um valor x por unidade.
        tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
        anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

        requires = {
            { item = "polvora" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            { item = "capsula" , amount = 20 },
        }
    },               
    }
},             

    ["Bahamas"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215132074856538/3S2po4JegFb0Oi6qzbXLY_AUCZ6K60y_Kx8DG10hfTfjJzgD5yKXAcCAoePyiyj-KZzM", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            
            ["notafiscalfalsa"] = { -- IMAGEM DO ITEM
                spawnID = "notafiscalfalsa", -- SPAWN DO ITEM
                nameItem = "Nota Fiscal Falsa", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "papel" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "alvejante" , amount = 50 },
                }
            },  

            ["algemas"] = { -- IMAGEM DO ITEM
            spawnID = "algemas", -- SPAWN DO ITEM
            nameItem = "Algemas", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },

            ["colete"] = { -- IMAGEM DO ITEM
                spawnID = "colete", -- SPAWN DO ITEM
                nameItem = "Colete Balistico", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "linha" , amount = 20 },
                    { item = "pano" , amount = 15 },
                }
            },  

            ["c4"] = { -- IMAGEM DO ITEM
                spawnID = "c4", -- SPAWN DO ITEM
                nameItem = "C4 Explosivo", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "fioseletricos" , amount = 15 },
                }
            },                 

            ["capuz"] = { -- IMAGEM DO ITEM
                spawnID = "capuz", -- SPAWN DO ITEM
                nameItem = "Capuz", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pano" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "linha" , amount = 12 },
                }
            },  
            ["pendrive"] = { -- IMAGEM DO ITEM
                spawnID = "pendrive", -- SPAWN DO ITEM
                nameItem = "Pendrive", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "ferro" , amount = 15 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "fioseletricos" , amount = 12 },
                }
            },  

            
        }
    },  

    ["Yakuza"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215660527792148/BdK0bBpDN2Lg5uBmFCIn0EGm_yivfRZLb4rzOrHqwX8Hyk-DUz1AdDnQcet96LUIJiyx", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {

            ["algemas"] = { -- IMAGEM DO ITEM
            spawnID = "algemas", -- SPAWN DO ITEM
            nameItem = "Algemas", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 1, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "ferro" , amount = 100 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
            }
        },

             ["ak47"] = { -- IMAGEM DO ITEM
                spawnID = "wbody|WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
                nameItem = "AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar    um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "armacaodearma" , amount = 55 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "pecadearma" , amount = 60 },
                }
            },

            ["fiveseven"] = { -- IMAGEM DO ITEM
                spawnID = "wbody|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "FIVE", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "armacaodearma" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "pecadearma" , amount = 40 },
                }
            },  

        ["m-ak"] = { -- IMAGEM DO ITEM
            spawnID = "wammo|WEAPON_ASSAULTRIFLE", -- SPAWN DO ITEM
            nameItem = "MUNI AK-47", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 40, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 50 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsula" , amount = 50 },
            }
        },  

        ["m-fiveseven"] = { -- IMAGEM DO ITEM
            spawnID = "wammo|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
            nameItem = "MUNI FIVE", -- NOME DO ITEM
            maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
            customAmount = 40, -- Caso queira colocar um valor x por unidade.
            tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
            anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

            requires = {
                { item = "polvora" , amount = 30 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                { item = "capsula" , amount = 20 },
            }
        },               
        }
    },     
    
    ["Cv"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215616009461852/ZJCNdcKWOGe4AIcsD3fSvlbq7NJj04iiBFo9cWv7-k3jEuUv_D0dWU2_k9OdAmmLoYWs", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["m-ak47"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 40, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 80 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 40 },
                }
            },  

            ["m-g36c"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_SPECIALCARBINE", -- SPAWN DO ITEM
                nameItem = "MUNI G36-C", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 40, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 80 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 40 },
                }
            },                 

            ["m-mtar21"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_ASSAULTSMG", -- SPAWN DO ITEM
                nameItem = "MUNI MTAR-21", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 30, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 30 },
                }
            },  

            ["m-tec9"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                nameItem = "MUNI TEC-9", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 30, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 30 },
                }
            },    

            ["m-pistolhk"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI FAJUTA", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 20, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 20 },
                }
            },      
            
            ["m-fiveseven"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI FIVE SEVEN", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 20, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 20 },
                }
            },
        }
    },     
    
    ["Crips"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215577774178364/9-CVuu2iOC_CC6V-yagoenJzuy1R5qSuCxP5Q9buqUst2GiJkQ1HOY8d64Ml4Jtidr-U", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["m-ak47"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_ASSAULTRIFLE_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI AK-47", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 40, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 80 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 40 },
                }
            },  

            ["m-g36c"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_SPECIALCARBINE", -- SPAWN DO ITEM
                nameItem = "MUNI G36-C", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 40, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 80 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 40 },
                }
            },                 

            ["m-mtar21"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_ASSAULTSMG", -- SPAWN DO ITEM
                nameItem = "MUNI MTAR-21", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 30, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 30 },
                }
            },  

            ["m-tec9"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_MACHINEPISTOL", -- SPAWN DO ITEM
                nameItem = "MUNI TEC-9", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 30, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 60 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 30 },
                }
            },    
            
            ["m-pistolhk"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_SNSPISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI FAJUTA", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 20, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 20 },
                }
            },      
            
            ["m-fiveseven"] = { -- IMAGEM DO ITEM
                spawnID = "wammo|WEAPON_PISTOL_MK2", -- SPAWN DO ITEM
                nameItem = "MUNI FIVE SEVEN", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 20, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "polvora" , amount = 20 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                    { item = "capsulas" , amount = 20 },
                }
            },
        }
    }, 
    
    ["Elements"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215392658567168/h8rhaSP9wN5L7oJFEeI2UFyDSdiWCpsq5GjREWfgt6mrTk4kE8ggKWQtDGk5x-NFsH_4", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["colete"] = { -- IMAGEM DO ITEM
                spawnID = "colete", -- SPAWN DO ITEM
                nameItem = "Colete", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "vest" , amount = 10 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                }
            },  

            ["algema"] = { -- IMAGEM DO ITEM
                spawnID = "algema", -- SPAWN DO ITEM
                nameItem = "Algema", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "corrente" , amount = 16 },
                }
            },                 

            ["capuz"] = { -- IMAGEM DO ITEM
                spawnID = "capuz", -- SPAWN DO ITEM
                nameItem = "Capuz", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pano" , amount = 16 },
                }
            },  
        }
    },    
    
    ["Petrovic"] = { -- NUNCA REPITIR O MESMO NOME
        armazem = false, -- Caso coloque true, configure a localização do armazem. ( false os items precisam está no inventario .)
        weebhook = "https://discordapp.com/api/webhooks/979215351990603846/69oi_0UIQ0QpAiNG8_QXfO7uJdtp3y2xLNAs5kSNi-OkHGfafkg98bLrNyimDmWWY55S", -- WEEBHOOK DAS TRANSACOES FEITAS AQUI [ CRAFT / ARMAZEM ] [ PASSAR PARA SERVER SIDE AQUI TUDO ]

        craft = {
            ["colete"] = { -- IMAGEM DO ITEM
                spawnID = "colete", -- SPAWN DO ITEM
                nameItem = "Colete", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "vest" , amount = 10 }, -- ITEM / QUANTIDADE ( POR UNIDADE )
                }
            },  

            ["algema"] = { -- IMAGEM DO ITEM
                spawnID = "algema", -- SPAWN DO ITEM
                nameItem = "Algema", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "corrente" , amount = 16 },
                }
            },                 

            ["capuz"] = { -- IMAGEM DO ITEM
                spawnID = "capuz", -- SPAWN DO ITEM
                nameItem = "Capuz", -- NOME DO ITEM
                maxAmount = 5, -- Quantidade maxima de Craft [ VALOR DA INPUT < >]
                customAmount = 1, -- Caso queira colocar um valor x por unidade.
                tempo = 10, -- Tempo de craft por Unidade [ em segundos ]
                anim = { "amb@prop_human_parking_meter@female@idle_a","idle_a_female" }, -- ANIMAÇÃO DURANTE O CRAFT. (SE O TEMPO ESTIVER 0 DESCONSIDERAR)

                requires = {
                    { item = "pano" , amount = 16 },
                }
            },  
        }
    },            
}

config.craftLocations = {
    --[1] = { type = "Cosanostra", perm = 'manager.permissao', coords = vec3(-844.55, -1217.79, 6.62), visible = 1.0 },
    -- [2] = { type = "Yakuza", perm = 'yakuza.permissao', coords = vec3(-1468.14,-47.8,54.65), visible = 1.0 },
    --[2] = { type = "Yakuza", perm = 'yakuza.permissao', coords = vec3(-1832.25,430.77,118.38), visible = 1.0 },
    --[3] = { type = "Serpents", perm = 'serpents.permissao', coords = vec3(-1490.47,833.88,177.0), visible = 1.0 },
   -- [4] = { type = "Medelin", perm = 'medelin.permissao', coords = vec3(-1870.63,2062.75,135.44), visible = 1.0 },
   -- [5] = { type = "Elements", perm = 'elements.permissao', coords = vec3(-617.59,-1621.01,33.02), visible = 1.0 },
   -- [6] = { type = "Cv", perm = 'cv.permissao', coords = vec3(-1551.46,346.49,86.69), visible = 1.0 },
   -- [7] = { type = "Petrovic", perm = 'petrovic.permissao', coords = vec3(-343.72,-140.04,39.01), visible = 1.0 },
   -- [8] = { type = "Elements", perm = 'elements.permissao', coords = vec3(136.12,-1937.77,20.65), visible = 1.0 },
    --[9] = { type = "Cosanostra", perm = 'cosanostra.permissao', coords = vec3(1399.47,1132.46,117.5), visible = 1.0 },
    -- [11] = { type = "Yakuza", perm = 'yakuza.permissao', coords = vec3(-1476.75,-41.5,54.66), visible = 1.0 },
   -- [10] = { type = "Serpents", perm = 'serpents.permissao', coords = vec3(-1486.4,835.81,177.0), visible = 1.0 },
    --[11] = { type = "Medelin", perm = 'medelin.permissao', coords = vec3(-1870.63,2062.75,135.44), visible = 1.0 },
    --[12] = { type = "Elements", perm = 'elements.permissao', coords = vec3(-580.26,-1589.65,26.76 ), visible = 1.0 },
    [11] = { type = "Yakuza", perm = 'yakuza.permissao', coords = vec3(-1490.56, 833.91, 177.0), visible = 2.0 },
    [12] = { type = "Yakuza", perm = 'yakuza.permissao', coords = vec3(-1486.41, 835.82, 177.0), visible = 2.0 },
    [13] = { type = "Bahamas", perm = 'bahamas.permissao', coords = vec3(-1364.04, -622.72, 30.33), visible = 2.0 },
    [14] = { type = "Vanilla", perm = 'vanilla.permissao', coords = vec3(97.27, -1306.01, 29.3), visible = 2.0 },
    [15] = { type = "DK", perm = 'dk.permissao', coords = vec3(147.86, 852.63, 213.16), visible = 2.0 },
    [16] = { type = "FamiliaFS", perm = 'mafia.permissao', coords = vec3(-1518.32, 125.54, 48.66), visible = 2.0 },
    [17] = { type = "Cartel", perm = 'cartel.permissao', coords = vec3(412.18, 3.85, 84.93), visible = 2.0 },

}

config.armazemLocations = {
    --["Mafia"] = { perm = "perm.mafia", coords = vec3(585.68,-3118.25,6.07), visible = 5.0 },
}


-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
src.checkPermission = function(permission)
    local source = source
    local user_id = vRP.getUserId(source)
    if user_id then
        if permission == nil then
            return true
        end

        if vRP.hasPermission(user_id, permission) then
            return true
        end

        return false
    end
end

src.getItemName = function(item)
    return item
end

src.giveInventoryItem = function(user_id, item, amount)
    vRP.giveInventoryItem(user_id, item, amount)
end

src.getInventoryItemAmount = function(user_id, item)
    return vRP.getInventoryItemAmount(user_id, item)
end

src.tryGetInventoryItem = function(user_id, item, amount)
    return vRP.tryGetInventoryItem(user_id, item, amount)
end

src.checkInventoryWeight = function(user_id, spawnID, amount)
    if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(tostring(spawnID))*parseInt(amount) > vRP.getInventoryMaxWeight(user_id) then -- CASO ESTIVER CHEIO
        return false
    end

    return true
end

src.playAnim = function(source, anim1, anim2) 
    vRPclient._playAnim(source, false,{{anim1, anim2}},true)
end

src.stopAnim = function(source) 
    vRPclient._stopAnim(source, false)
end

src.progressBar = function(user_id, time)
    local source = vRP.getUserSource(user_id)
    TriggerClientEvent("progress", source, time*1000) -- Caso use em segundos
    -- TriggerClientEvent("progress", source, time*1000) -- Caso use em milissegundos
end

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- LANGS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
config.lang = {
    notArmazemItem = function(source, mensagem, tipo) if tipo == "armazem" then TriggerClientEvent("Notify",source,"negado","O Armazem possui: <br>" ..mensagem, 5) else TriggerClientEvent("Notify",source,"negado","Você possui: <br>" ..mensagem, 5) end end,
    erroFabricar = function(source) TriggerClientEvent("Notify",source,"sucesso","Ocorreu um erro ao tentar fabricar esse item, tente novamente!", 5) end,
    waitCraft = function(source, segundos) TriggerClientEvent("Notify",source,"sucesso","Aguarde, <b>"..segundos.." segundo(s)</b> para continuar.", 5) end,
    armazemItens = function(source, mensagem) TriggerClientEvent("Notify",source,"importante","Itens do Armazem:<br> ".. mensagem, 15)  end,
    notArmazemItens = function(source) TriggerClientEvent("Notify",source,"importante","Esse Armazem, não possui <b>itens</b>.", 5)  end,
    notStoreItens = function(source) TriggerClientEvent("Notify",source,"importante","Você não possui itens que possa ser guardado no armazem.", 5)  end,
    storeItens = function(source, mensagem) TriggerClientEvent("Notify",source,"importante","Você guardou:<br> "..mensagem, 5)  end,
    backpackFull = function(source) TriggerClientEvent("Notify",source,"negado","Sua Mochila está cheia", 5)  end,
    fabricandoItem = function(source) TriggerClientEvent("Notify",source,"negado","Aguarde, Você ja está fabricando um item.", 5)  end,
}