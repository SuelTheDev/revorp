local config          = {}

config.currency       = "R$" --text to currency log of bank organization
config.textwithdrawal = "Retirado por" --text to withdrawal log of bank organization
config.textdeposit    = "Depositado por" --text to deposit log of bank organization
config.texttake       = "Retirado por" --text to take log of chest organization
config.textstore      = "Colocado por" --text to store log of chest organization
config.IPImages       = "http://127.0.0.1/itens/" --link of images the server
config.command        = "painel" --command to open system
config.keybind        = "F7" --bind to open system
config.webhooklink    =
"https://discord.com/api/webhooks/1061051919373713569/IWJAKrMmZyne_kvWctA69UPcIZvDSAAJzLa2wds5WVpbjVg1wlj9Whgz0IURrd4uMLQt" --webhook discord of logs system
config.webhookimage   =
"https://cdn.discordapp.com/attachments/939679128888696843/979010376156995584/lerileri.png" --image of   discord

config.blacklist      = {
    --command to blacklist manager
    --(ex add: /blacklist add user_id days)
    --(ex remove: /blacklist rem user_id)
    command = "blacklist",
    permissions = { --permissions of manager blacklist
        "admin.permissao"
    }
}

config.groups         = {

    -------------------------------------PM----------------------------------
    ["PM"] = { --organization name
    chest       = "pmsp", --chest name of logs
    bank        = true, --active bank (true|false)
    members     = 50, --maxmembers of organization
    blacklist   = {
        active = false, --active blacklist (true|false)
        time   = 0, --in days
    },
    permissions = {
        [1] = { inservice = "ComandanteGeral", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "TenenteCoronel", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "Major", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "Capitao", offservice = false, withdraw = false, manager = false },
        [5] = { inservice = "1Tenente", offservice = false, withdraw = false, manager = false },
        [6] = { inservice = "2Tenente", offservice = false, withdraw = false, manager = false },
        [7] = { inservice = "Sargento", offservice = false, withdraw = false, manager = false },
        [8] = { inservice = "2Sargento", offservice = false, withdraw = false, manager = false },
        [9] = { inservice = "3Sargento", offservice = false, withdraw = false, manager = false },
        [10] = { inservice = "Soldado", offservice = false, withdraw = false, manager = false },
        [11] = { inservice = "Recruta", offservice = false, withdraw = false, manager = false },
    }
},  

---------------------------------CIVIL------------------------------------------------
["CIVIL"] = { --organization name
chest       = "civil", --chest name of logs
bank        = true, --active bank (true|false)
members     = 50, --maxmembers of organization
blacklist   = {
    active = false, --active blacklist (true|false)
    time   = 0, --in days
},
permissions = {
    [1] = { inservice = "DelegadoPC", offservice = false, withdraw = true, manager = true },
    [2] = { inservice = "Escrivao", offservice = false, withdraw = true, manager = false },
    [3] = { inservice = "Investigador", offservice = false, withdraw = false, manager = false },
}
},

-----------------------------ROTA-------------------------------------------------------
["ROTA"] = { --organization name
chest       = "rota", --chest name of logs
bank        = true, --active bank (true|false)
members     = 50, --maxmembers of organization
blacklist   = {
    active = false, --active blacklist (true|false)
    time   = 0, --in days
},
permissions = {
    [1] = { inservice = "CoronelRT", offservice = false, withdraw = true, manager = true },
    [2] = { inservice = "TenCoronelRT", offservice = false, withdraw = true, manager = true },
    [3] = { inservice = "CapitaoRT", offservice = false, withdraw = false, manager = false },
    [4] = { inservice = "TenenteRT", offservice = false, withdraw = false, manager = false },
    [5] = { inservice = "SargentoRT", offservice = false, withdraw = false, manager = false },
}
},
------------------------HOSPITAL-------------------------------------------------------
["HP"] = { --organization name
chest       = "hp", --chest name of logs
bank        = true, --active bank (true|false)
members     = 50, --maxmembers of organization
blacklist   = {
    active = false, --active blacklist (true|false)
    time   = 0, --in days
},
permissions = {
    [1] = { inservice = "DiretorHP", offservice = false, withdraw = true, manager = true },
    [2] = { inservice = "ViceDiretorHP", offservice = false, withdraw = true, manager = true },
    [3] = { inservice = "MedicoChefeHP", offservice = false, withdraw = false, manager = false },
    [4] = { inservice = "MedicoHP", offservice = false, withdraw = false, manager = false },
    [5] = { inservice = "EnfermeiroHP", offservice = false, withdraw = false, manager = false },
}
},
-----------------------LS CUSTONS --------------------------------------------------------
["LSCUSTONS"] = { --organization name
chest       = "lscustons", --chest name of logs
bank        = true, --active bank (true|false)
members     = 50, --maxmembers of organization
blacklist   = {
    active = false, --active blacklist (true|false)
    time   = 0, --in days
},
permissions = {
    [1] = { inservice = "LiderLS", offservice = false, withdraw = true, manager = true },
    [2] = { inservice = "ViceLiderLS", offservice = false, withdraw = true, manager = true },
    [3] = { inservice = "GerenteLS", offservice = false, withdraw = false, manager = false },
    [4] = { inservice = "TunagemLS", offservice = false, withdraw = false, manager = false },
    [5] = { inservice = "ReparoLS", offservice = false, withdraw = false, manager = false },
}
},
---------------------------BENNYS-------------------------------------------------------------
["Bennys"] = {
    chest = "bennys",
    bank = false,
    members = 20,
    blacklist = {
        active = true,
        time = 3
    },
    permissions = {
        [1] = { inservice = "LiderBennys", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "ViceLiderBennys", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "GerenteBennys", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "Bennys", offservice = false, withdraw = false, manager = false },


    }
},
------------------------------------------GANGS-------------------------------------------------------------------------
["FS"] = { --organization name
        chest       = "fs", --chest name of logs
        bank        = true, --active bank (true|false)
        members     = 20, --maxmembers of organization
        blacklist   = {
            active = false, --active blacklist (true|false)
            time   = 3, --in days
        },
        permissions = {
            [1] = { inservice = "LiderFS", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "ViceLiderFS", offservice = false, withdraw = true, manager = true },
            [3] = { inservice = "ConselheiroFS", offservice = false, withdraw = false, manager = false },
            [4] = { inservice = "GoldenBoys", offservice = false, withdraw = false, manager = false },
        }
    },
["CARTEL"] = { --organization name
    chest       = "cartel", --chest name of logs
    bank        = true, --active bank (true|false)
    members     = 20, --maxmembers of organization
    blacklist   = {
        active = false, --active blacklist (true|false)
        time   = 3, --in days
    },
    permissions = {
        [1] = { inservice = "LiderCartel", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "ViceLiderCartel", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "GerenteCartel", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "Cartel", offservice = false, withdraw = false, manager = false },
    }
},
["DK"] = { --organization name
    chest       = "dk", --chest name of logs
    bank        = true, --active bank (true|false)
    members     = 20, --maxmembers of organization
    blacklist   = {
        active = false, --active blacklist (true|false)
        time   = 3, --in days
    },
    permissions = {
        [1] = { inservice = "LiderDK", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "ViceLiderDK", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "GerenteDK", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "DK", offservice = false, withdraw = false, manager = false },
    }
},
["VANILLA"] = { --organization name
    chest       = "vanilla", --chest name of logs
    bank        = true, --active bank (true|false)
    members     = 20, --maxmembers of organization
    blacklist   = {
        active = false, --active blacklist (true|false)
        time   = 3, --in days
    },
    permissions = {
        [1] = { inservice = "LiderVanilla", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "ViceLiderVanilla", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "GerenteVanilla", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "Vanilla", offservice = false, withdraw = false, manager = false },
    }
},
["BAHAMAS"] = { --organization name
    chest       = "bahamas", --chest name of logs
    bank        = true, --active bank (true|false)
    members     = 20, --maxmembers of organization
    blacklist   = {
        active = false, --active blacklist (true|false)
        time   = 3, --in days
    },
    permissions = {
        [1] = { inservice = "LiderBahamas", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "ViceLiderBahamas", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "GerenteBahamas", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "Bahamas", offservice = false, withdraw = false, manager = false },
    }
},
["YAKUZA"] = { --organization name
    chest       = "yakuza", --chest name of logs
    bank        = true, --active bank (true|false)
    members     = 20, --maxmembers of organization
    blacklist   = {
        active = false, --active blacklist (true|false)
        time   = 3, --in days
    },
    permissions = {
        [1] = { inservice = "LiderYakuza", offservice = false, withdraw = true, manager = true },
        [2] = { inservice = "ViceLiderYakuza", offservice = false, withdraw = true, manager = true },
        [3] = { inservice = "GerenteYakuza", offservice = false, withdraw = false, manager = false },
        [4] = { inservice = "Yakuza", offservice = false, withdraw = false, manager = false },
    }
}

}

config.starttablet    = function()
    vRP._CarregarObjeto("amb@code_human_in_bus_passenger_idles@female@tablet@idle_a", "idle_b", "prop_cs_tablet", 49,
        60309)
end

config.stoptablet     = function()
    vRP._DeletarObjeto()
    vRP._stopAnim(false)
end

return config
