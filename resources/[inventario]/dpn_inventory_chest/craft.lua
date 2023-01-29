ConfigCraft = {
    craft = {
        
        ['maconha'] = {
            resultado = {name = "radio", amount = 5}, 
            loc = {
                {1318.31, -176.82, 108.35}
            },            
            perm = "vanilla.permissao",
            animation = true,
            animationData = { upper = true, seq = {{ "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }}, looping = true }, 
            animationTime = 14, 
            lockPed = true, 
            slot = {
                [1] = {item = "agua", quantidade = 1},
                [2] = {item = "sanduiche", quantidade = 1},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ['cocaina'] = {
            resultado = {name = "cocaina", amount = 5}, 
            loc = {
                {1615.0,454.94,257.25}
            },            
            perm = "ballas.permissao",
            animation = true,
            animationData = { upper = true, seq = {{ "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }}, looping = true }, 
            animationTime = 20, 
            lockPed = true, 
            slot = {
                [1] = {item = "folhadecoca", quantidade = 20},
                [2] = {item = "pastadecoca", quantidade = 20},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ['lsd'] = {
            resultado = {name = "lsd", amount = 5}, 
            loc = {
                {1239.11,3580.03,36.18}
            },            
            perm = "families.permissao",
            animation = true,
            animationData = { upper = true, seq = {{ "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }}, looping = true }, 
            animationTime = 20, 
            lockPed = true, 
            slot = {
                [1] = {item = "fungo", quantidade = 20},
                [2] = {item = "dietilamina", quantidade = 20},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ['metanfetamina'] = {
            resultado = {name = "metanfetamina", amount = 5}, 
            loc = {
                {2199.72,19.87,250.58}
            },            
            perm = "vagos.permissao",
            animation = true,
            animationData = { upper = true, seq = {{ "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }}, looping = true }, 
            animationTime = 20, 
            lockPed = true, 
            slot = {
                [1] = {item = "acidobateria", quantidade = 20},
                [2] = {item = "anfetamina", quantidade = 20},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ------------------------------------------------------------
        ['ak103'] = {
            resultado = {name = "wbody|WEAPON_ASSAULTRIFLE", amount = 1}, 
            loc = {
                {-1870.59,2061.71,135.44}, -- RUSSIA
                {-1492.87,843.79,181.6} -- EUA
            },            
            perm = "armas.permissao",
            slot = {
                [1] = {item = "corpo-arma", quantidade = 1},
                [2] = {item = "aco", quantidade = 60},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ['mtar21'] = {
            resultado = {name = "wbody|WEAPON_ASSAULTSMG", amount = 1}, 
            loc = {
                {-1870.59,2061.71,135.44}, -- RUSSIA
                {-1492.87,843.79,181.6} -- EUA
            },            
            perm = "armas.permissao",
            slot = {
                [1] = {item = "corpo-arma", quantidade = 1},
                [2] = {item = "aco", quantidade = 45},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        ['fiveseven'] = {
            resultado = {name = "wbody|WEAPON_PISTOL_MK2", amount = 1}, 
            loc = {
                {-1870.59,2061.71,135.44}, -- RUSSIA
                {-1492.87,843.79,181.6} -- EUA
            },     
            animation = true,
            animationData = { upper = true, seq = {{ "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }}, looping = true }, 
            animationTime = 20, 
            lockPed = true,        
            perm = "franca.permissao",
            slot = {
                [1] = {item = "corpo-arma", quantidade = 1},
                [2] = {item = "aco", quantidade = 30},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        ['thompson'] = {
            resultado = {name = "wbody|WEAPON_GUSENBERG", amount = 1}, 
            loc = {
                {-1870.59,2061.71,135.44}, -- RUSSIA
                {-1492.87,843.79,181.6} -- EUA
            },            
            perm = "armas.permissao",
            slot = {
                [1] = {item = "corpo-arma", quantidade = 1},
                [2] = {item = "aco", quantidade = 35},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ['uzi'] = {
            resultado = {name = "wbody|WEAPON_MICROSMG", amount = 1}, 
            loc = {
                {-1870.59,2061.71,135.44}, -- RUSSIA
                {-1492.87,843.79,181.6} -- EUA
            },            
            perm = "armas.permissao",
            slot = {
                [1] = {item = "corpo-arma", quantidade = 1},
                [2] = {item = "aco", quantidade = 35},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        -------------------------------------------------------------------------------------	
        ['ak103ammo'] = {
            resultado = {name = "wammo|WEAPON_ASSAULTRIFLE", amount = 50}, 
            loc = {
                {999.43,-118.62,74.07}, --Grecia
                {904.33,-2108.31,30.77} --Nepal
            },            
            perm = "municao.permissao",
            slot = {
                [1] = {item = "capsula", quantidade = 50},
                [2] = {item = "polvora", quantidade = 50},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },		
        ['mtar21ammo'] = {
            resultado = {name = "wammo|WEAPON_ASSAULTSMG", amount = 50}, 
            loc = {
                {999.43,-118.62,74.07}, --Grecia
                {904.33,-2108.31,30.77} --Nepal
            },            
            perm = "municao.permissao",
            slot = {
                [1] = {item = "capsula", quantidade = 50},
                [2] = {item = "polvora", quantidade = 40},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        ['fiveseven'] = {
            resultado = {name = "wammo|WEAPON_PISTOL_MK2", amount = 30}, 
            loc = {
                {999.43,-118.62,74.07}, --Grecia
                {904.33,-2108.31,30.77} --Nepal
            },            
            animation = true,
            animationData = { upper = true, seq = {{ "amb@prop_human_parking_meter@female@idle_a", "idle_a_female" }}, looping = true }, 
            animationTime = 20, 
            lockPed = true,    
            perm = "municao.permissao",
            slot = {
                [1] = {item = "capsula", quantidade = 50},
                [2] = {item = "polvora", quantidade = 25},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        ['thompsonammo'] = {
            resultado = {name = "wammo|WEAPON_GUSENBERG", amount = 50}, 
            loc = {
                {999.43,-118.62,74.07}, --Grecia
                {904.33,-2108.31,30.77} --Nepal
            },            
            perm = "municao.permissao",
            slot = {
                [1] = {item = "capsula", quantidade = 50},
                [2] = {item = "polvora", quantidade = 35},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },
        ['uziammo'] = {
            resultado = {name = "ammo|WEAPON_MICROSMG", amount = 50}, 
            loc = {
                {999.43,-118.62,74.07}, --Grecia
                {904.33,-2108.31,30.77} --Nepal
            },            
            perm = "municao.permissao",
            slot = {
                [1] = {item = "capsula", quantidade = 50},
                [2] = {item = "polvora", quantidade = 35},
                [3] = {item = "mola", quantidade = 1},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        -------------------------------------------------------------------------------------
        ['20kSujo'] = {
            resultado = {name = "dinheiro", amount = 10000}, 
            loc = {
                {129.57,-1008.72,29.41},
                {-1365.26,-623.52,30.33}
            },            
            perm = "admin.permissao",
            slot = {
                [1] = {item = "dinheirosujo", quantidade = 1},
                [2] = {item = "nada", quantidade = 0},
                [3] = {item = "nada", quantidade = 0},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },	
        ['100kSujo'] = {
            resultado = {name = "dinheiro", amount = 80000}, 
            loc = {
                {94.32,-1294.03,29.59},
                {-1365.26,-623.52,30.33}
            },            
            perm = "lavagem.permissao",
            slot = {
                [1] = {item = "dinheirosujo", quantidade = 100000},
                [2] = {item = "caixa", quantidade = 15},
                [3] = {item = "alvejante", quantidade = 30},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },  
        ['200kSujo'] = {
            resultado = {name = "dinheiro", amount = 180000}, 
            loc = {
                {94.32,-1294.03,29.59},
                {-1365.26,-623.52,30.33}
            },            
            perm = "lavagem.permissao",
            slot = {
                [1] = {item = "dinheirosujo", quantidade = 200000},
                [2] = {item = "caixa", quantidade = 25},
                [3] = {item = "alvejante", quantidade = 50},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },        
        ['1kkSujo'] = {
            resultado = {name = "dinheiro", amount = 800000}, 
            loc = {
                {94.32,-1294.03,29.59},
                {-1365.26,-623.52,30.33}
            },            
            perm = "lavagem.permissao",
            slot = {
                [1] = {item = "dinheirosujo", quantidade = 1000000},
                [2] = {item = "caixa", quantidade = 50},
                [3] = {item = "alvejante", quantidade = 100},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },        
        -------------------------------------------------------------------------------------
        ['dinheiro'] = {
            resultado = {name = "dinheiro", amount = 130000}, 
            loc = {
                {94.37,-1294.05,29.27},
                {-1364.66,-623.17,30.33}
            },            
            perm = "lavagem.permissao",
            slot = {
                [1] = {item = "dinheirosujo", quantidade = 200000},
                [2] = {item = "caixa", quantidade = 50},
                [3] = {item = "alvejante", quantidade = 50},
                [4] = {item = "nada", quantidade = 0},
                [5] = {item = "nada", quantidade = 0},
                [6] = {item = "nada", quantidade = 0},
                [7] = {item = "nada", quantidade = 0},
                [8] = {item = "nada", quantidade = 0},
                [9] = {item = "nada", quantidade = 0},
            },
        },			
    }
}