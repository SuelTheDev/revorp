ConfigClient = {
    debug = true, 
    unidades = 10,
    distance = 2, -- Distancia que poderá abrir as lojas
    keyBind = true, -- Se o inventário terá key bind ou seja os 5 primeiros itens ele poderá usar com as teclas 1,2,3,4,5 respectivamente
    keyBindWeapon = false, -- Se o inventário terá a opção e pegar a arma na mão e desativar o tab ao usar a keybind
    ip = "http://34.95.138.47/imagens/itens", -- caso use ip por xammp bote o caminho assim http://ip/caminho e tire as iamgens do fx_manifest
    percentual = 0.85, -- Percentual para venda de itens nesse caso padrão está para 85% do valor do item
    tecla = 'oem_3', -- tecla que abrirá o inventario padrão é o aspas
    blackItemList = {
        trunckchest = {
            "identidade",
            "dinheirosujo",
            "cartao"
        }, -- Itens que não poderá colocar no chest das dos carros
        chest = {
            "identidade",
            "cartao"
        },-- Itens que não poderá colocar no chest das facções
        homes = {
            "identidade",
            "cartao"
        }, -- Itens que não poderá colocar no chest das casas
      
    }, -- Itens que não poderá colocar nos trunckchests, chests, homes


    lojas = {
        -- caso queira fazer mais uma loja copie daqui:
        ammunation = {
            locs = {
                { 1692.62,3759.50,34.70 },
                { 252.89,-49.25,69.94 },
                { 843.28,-1034.02,28.19 },
                { -331.35,6083.45,31.45 },
                { -663.15,-934.92,21.82 },
                { -1305.18,-393.48,36.69 },
                { -1118.80,2698.22,18.55 },
                { 2568.83,293.89,108.73 },
                { -3172.68,1087.10,20.83 },
                { 21.32,-1106.44,29.79 },
                { 811.19,-2157.67,29.61 }
            },
            itens = {
               ['wbody|WEAPON_KNIFE'] = {price = 15000},
               ['wbody|WEAPON_DAGGER'] = {price = 15000},
               ['wbody|WEAPON_KNUCKLE'] = {price = 15000},
               ['wbody|WEAPON_MACHETE'] = {price = 15000},
               ['wbody|WEAPON_SWITCHBLADE'] = {price = 15000},
               ['wbody|WEAPON_WRENCH'] = {price = 15000},
               ['wbody|WEAPON_HAMMER'] = {price = 15000},
               ['wbody|WEAPON_GOLFCLUB'] = {price = 15000},
               ['wbody|WEAPON_CROWBAR'] = {price = 15000},
               ['wbody|WEAPON_HATCHET'] = {price = 15000},
               ['wbody|WEAPON_FLASHLIGHT'] = {price = 15000},
               ['wbody|WEAPON_BAT'] = {price = 15000},
               ['wbody|WEAPON_BOTTLE'] = {price = 15000},
               ['wbody|WEAPON_BATTLEAXE'] = {price = 15000},
               ['wbody|WEAPON_POOLCUE'] = {price = 15000},
               ['wbody|WEAPON_STONE_HATCHET'] = {price = 15000},
            },
        }, -- até aqui e troque o nome ammunation
        cassino = {
            locs = {
                { 1116.1156005859,220.53717041016,-49.435111999512 }
            }, -- Localizção das lojas de departamentos
    
            itens = {
               ['fichas'] = {price = 2000},
            },
        },
        departamento = {
            locs = {
                { 25.65,-1346.58,29.49 },
                { 2556.75,382.01,108.62 },
                { 1163.54,-323.04,69.20 },
                { -707.37,-913.68,19.21 },
                { -47.73,-1757.25,29.42 },
                { 373.90,326.91,103.56 },
                { -3243.10,1001.23,12.83 },
                { 1729.38,6415.54,35.03 },
                { 547.90,2670.36,42.15 },
                { 1960.75,3741.33,32.34 },
                { 2677.90,3280.88,55.24 },
                { 1698.45,4924.15,42.06 },
                { -1820.93,793.18,138.11 },
                { 1392.46,3604.95,34.98 },
                { -2967.82,390.93,15.04 },
                { -3040.10,585.44,7.90 },
                { 1135.56,-982.20,46.41 },
                { 1165.91,2709.41,38.15 },
                { -1487.18,-379.02,40.16 },
                { -1222.78,-907.22,12.32 },
                { -1095.55,-2594.57,13.92 },
                { 1589.57, 14.8, 165.96 }
            }, -- Localizção das lojas de departamentos
    
            itens = {
                ['repairkit'] = {price = 5000},
                ['roupas'] = {price = 5000},
                ['celular'] = {price = 5000},
                ['radio'] = {price = 5000},
                ['mochila'] = {price = 5000},
               ['rosquinha'] = {price = 250},
               ['salgadinho'] = {price = 250},
               ['sanduiche'] = {price = 500},
               ['hamburger'] = {price = 500},
               ['chocolate'] = {price = 250},
               ['pao'] = {price = 160},
               ['pizza'] = {price = 500},
               ['hotdog'] = {price = 500},
               ['cafe'] = {price = 200},
               ['refrigerante'] = {price = 250},
               ['cerveja'] = {price = 300},
               ['tequila'] = {price = 300},
               ['vodka'] = {price = 300},
               ['whisky'] = {price = 300},
               ['agua'] = {price = 250},
               ['conhaque'] = {price = 300},
               ['energetico'] = {price = 10000},
            },
        },

        mecanica = {
            locs = {
                { 842.47, -985.46, 26.5 }
            }, -- Localizção das lojas de departamentos
            perm = "tunagem.permissao", -- Permissao LOJA
            itens = {
               ['repairkit'] = {price = 2000},
            },
        },

        hospital = {
            locs = {
                { -814.55, -1240.01, 7.34 }
            },
            perm = "medico.permissao", -- Permissao LOJA
            itens = {
               ['bandagem'] = {price = 2000},
            },
        },
        lojabebidas = {
            locs = {
                { -1391.94, -605.92, 30.32 },
                { -1387.3, -614.41, 30.32 }
            }, -- Localizção das lojas de departamentos
    
            itens = {
                ['rosquinha'] = {price = 250},
                ['salgadinho'] = {price = 250},
                ['sanduiche'] = {price = 500},
                ['hamburger'] = {price = 500},
                ['chocolate'] = {price = 250},
                ['pao'] = {price = 160},
                ['pizza'] = {price = 500},
                ['hotdog'] = {price = 500},
                ['cafe'] = {price = 200},
                ['refrigerante'] = {price = 250},
                ['cerveja'] = {price = 300},
                ['tequila'] = {price = 300},
                ['vodka'] = {price = 300},
                ['whisky'] = {price = 300},
                ['agua'] = {price = 250},
                ['conhaque'] = {price = 300},
                ['energetico'] = {price = 5000},
            },
        },
    
    },

-- BAUS 3047.69,3136.14,155.85
chestFac = {

    ['HOSPITAL'] = {
        loc = {-822.02, -1240.31, 7.34}, -----HOSPITAL
        weight = 5000, 
        perm = "medico.permissao",
        slots = 100, 
        webhook = "",
    },

    ['CIVIL'] = {
        loc = {463.49, -984.87, 30.7}, -----POLiCIA-CIVIL 
        weight = 5000, 
        perm = "policia.permissao",
        slots = 100, 
        webhook = "",
    },
    ['PM'] = {
        loc = {621.86, -20.78, 82.78}, -----POLiCIA-Militar
        weight = 5000, 
        perm = "policia.permissao",
        slots = 100, 
        webhook = "",
    },
    ['PRF'] = {
        loc = {2610.34, 5346.27, 47.57}, -----POLiCIA-PRF
        weight = 5000, 
        perm = "policia.permissao",
        slots = 100, 
        webhook = "",
    },
    ['ROTA'] = {
        loc = {-2051.04, -499.99, 12.5}, -----POLiCIA-bope -1704.29, -765.76, 10.75
        weight = 5000, 
        perm = "policia.permissao",
        slots = 100, 
        webhook = "",
    },
    -- ['TDF'] = {
    --     loc = {1270.66,-126.41,87.64}, ----- DROGA --- Favela barragem
    --     weight = 5000, 
    --     perm = "TDF.permissao",
    --     slots = 100, 
    --     webhook = "",
    -- },
    -- ['TDT'] = {
    --     loc = {875.44, 1035.95, 283.67},----- LAVAGEM ------
    --     weight = 5000, 
    --     perm = "TDT.permissao",
    --     slots = 100, 
    --     webhook = "",
    -- },
    -- -------------------------------TDE BAUS --------------------------------------------------
    -- ['TDE'] = {
    --     loc = {1519.26, -41.24, 151.42}, -----DROGA --- Favela do capinho ---
    --     weight = 5000, 
    --     perm = "TDE.permissao",
    --     slots = 100, 
    --     webhook = "",
    -- },

    -- ['TDEVIP'] = {
    --     loc = {1595.59, 24.6, 165.96}, -----DROGA --- Favela do capinho ---
    --     weight = 10000, 
    --     perm = "liderTDJ.permissao",
    --     slots = 200, 
    --     webhook = "",
    -- },
    -- --------------------------------------------------------------------------------------------

    -- ['TDC'] = {
    --     loc = {1980.85, -954.42, 82.44},  ------DROGRA ----
    --     weight = 5000, 
    --     perm = "TDC.permissao",
    --     slots = 100, 
    --     webhook = "",
    -- },
    -- ['TDA'] = {
    --     loc = {-310.21, 1520.07, 367.73}, ------DESMANCHE ----favela morrao
    --     weight = 5000, 
    --     perm = "TDA.permissao",
    --     slots = 100, 
    --     webhook = "",
    -- },
    -- ['VANILLA'] = {
    --     loc = {98.79,-1305.08,29.29},----- LOCKPICK--C4-KEYKARD
    --     weight = 5000,  
    --     perm = "vanilla.permissao",
    --     slots = 100, 
    --     webhook = "https://discord.com/api/webhooks/1008718830228475916/H6x3JF3gvosuUVzJnZ-dxUqWH-t690X2TguTQu61D-GVGGnd05TNzT7p03rj-MziG-xk",
    -- },
    ------------------------------------------BAHAMAS VIP x2 -----------------------------------------------------------------------------------------------


    ['BAHAMAS'] = {
        loc = {-1367.24, -612.52, 30.32},---CAPUS-COLETE
        weight = 15000,  
        perm = "bahamas.permissao",
        slots = 300,  ------ x2 por conta do vip
        webhook = "",
    },
    ['BAHAMAS-VIP'] = {
        loc = {-1369.32, -624.23, 30.32},---CAPUS-COLETE
        weight = 10000,  
        perm = "liderbahamas.permissao",
        slots = 200,  ------ x2 por conta do vip
        webhook = "",
    },



    ----------------------------------------------------------------------------------------------------------------------------------------------------------------
    ['Cartel'] = {
        loc = {388.29,-10.17,86.68},---ARMAS
        weight = 5000,  
        perm = "gcartel.permissao",
        slots = 100, 
        webhook = "",
    },


    -----------------------FAMILIA FS VIP-----------------------------------------------------------------------------------------------


    ['FamiliaFS'] = {
        loc = {-1521.2,121.43,48.65},----MUNIÇAO FS
        weight = 5000,  
        perm = "fs.permissao",
        slots = 100, 
        webhook = "https://discord.com/api/webhooks/1064024425818755143/mNiFS8A7RhW65bYlJE4D-kOP7gBf2pXt8lknuKLwS97wB_URejbSMxECoLQG3rkF6NXO",
    },
    ['FamiliaFS-VIP'] = {
        loc = {-1547.27, 138.97, 55.66},----MUNIÇAO FS
        weight = 10000,  
        perm = "liderfs.permissao",
        slots = 200, 
        webhook = "",
    },

    ----------------------------------------------------------------------------------------------------------------------------------------


    ['LSCUSTONS'] = {
        loc = {842.47, -974.48, 26.5},----MECANICA LSCUSTONS
        weight = 5000,  
        perm = "tunagem.permissao",
        slots = 100, 
        webhook = "",
    },
    ['DK'] = {
        loc = {144.22, 855.11, 213.16},----DK
        weight = 5000,  
        perm = "dk.permissao",
        slots = 100, 
        webhook = "",
    },
    -- ['Yakuza'] = {
    --     loc = {-1492.04, 841.24, 177.0},----YAKUZA
    --     weight = 5000,  
    --     perm = "yakuza.permissao",
    --     slots = 100, 
    --     webhook = "",
    -- },


}



}