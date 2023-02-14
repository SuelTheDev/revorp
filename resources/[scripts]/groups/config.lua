local config          = {}

config.currency       = "R$" --text to currency log of bank organization
config.textwithdrawal = "Retirado por" --text to withdrawal log of bank organization
config.textdeposit    = "Depositado por" --text to deposit log of bank organization
config.texttake       = "Retirado por" --text to take log of chest organization
config.textstore      = "Colocado por" --text to store log of chest organization
config.IPImages       = "http://asgardrp.ddns.net/itens/" --link of images the server
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
    ['bloods'] = {
        chest = "bloods",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-bloods", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "bloods", offservice = false, withdraw = true, manager = false }
        }
    },
    ['ballas'] = {
        chest = "ballas",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-ballas", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "ballas", offservice = false, withdraw = true, manager = false }
        }
    },
    ['families'] = {
        chest = "families",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-families", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "families", offservice = false, withdraw = true, manager = false }
        }
    },
    ['yakuza'] = {
        chest = "yakuza",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-yakuza", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "yakuza", offservice = false, withdraw = true, manager = false }
        }
    },
    ['driftking'] = {
        chest = "driftking",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-driftking", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "driftking", offservice = false, withdraw = true, manager = false }
        }
    },
    ['motoclub'] = {
        chest = "motoclub",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-motoclub", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "motoclub", offservice = false, withdraw = true, manager = false }
        }
    },
    ['bratva'] = {
        chest = "bratva",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-bratva", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "bratva", offservice = false, withdraw = true, manager = false }
        }
    },
    ['cartel'] = {
        chest = "cartel",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-cartel", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "cartel", offservice = false, withdraw = true, manager = false }
        }
    },
    ['mafia'] = {
        chest = "mafia",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-mafia", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "mafia", offservice = false, withdraw = true, manager = false }
        }
    },
    ['vagos'] = {
        chest = "vagos",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-vagos", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "vagos", offservice = false, withdraw = true, manager = false }
        }
    },
    ['triads'] = {
        chest = "triads",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-triads", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "triads", offservice = false, withdraw = true, manager = false }
        }
    },
    ['vanilla'] = {
        chest = "vanilla",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-vanilla", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "vanilla", offservice = false, withdraw = true, manager = false }
        }
    },
    ['bahamas'] = {
        chest = "bahamas",
        bank = true,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "lider-bahamas", offservice = false, withdraw = true, manager = true },
            [2] = { inservice = "bahamas", offservice = false, withdraw = true, manager = false }
        }
    },
    ['judiciario'] = {
        chest = false,
        bank = false,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "juiz", offservice = "off-juiz", withdraw = false, manager = true },
            [2] = { inservice = "advogado", offservice = "off-advogado", withdraw = false, manager = false },
        }
    },
    ['hospital'] = {
        chest = false,
        bank = true,
        members = 50,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "diretor", offservice = "off-diretor", withdraw = false, manager = true },
            [2] = { inservice = "vice-diretor", offservice = "off-vice-diretor", withdraw = false, manager = true },
            [3] = { inservice = "socorrista", offservice = "off-socorrista", withdraw = false, manager = true },
            [4] = { inservice = "medico", offservice = "off-medico", withdraw = false, manager = false },
            [5] = { inservice = "enfermeiro", offservice = "off-enfermeiro", withdraw = false, manager = false },
        }
    },
    ['policia-rota'] = {
        chest = "policia-rota",
        bank = false,
        members = 50,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "coronel", offservice = "off-coronel", withdraw = false, manager = true },
            [2] = { inservice = "tenente-coronel", offservice = "off-tenente-coronel", withdraw = false, manager = false },
            [3] = { inservice = "rota-capitao", offservice = "off-rota-capitao", withdraw = false, manager = false },
            [4] = { inservice = "rota-tenente", offservice = "off-rota-tenente", withdraw = false, manager = false },
            [5] = { inservice = "rota-sargento", offservice = "off-rota-sargento", withdraw = false, manager = false },
        }
    },
    ['policia-militar'] = {
        chest = "policia-militar",
        bank = false,
        members = 50,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "comandante-geral", offservice = "off-comandante-geral", withdraw = false, manager = true },
            [2] = { inservice = "pm-tenente-coronel", offservice = "off-pm-tenente-coronel", withdraw = false, manager = false },
            [3] = { inservice = "major", offservice = "off-major", withdraw = false, manager = false },
            [4] = { inservice = "pm-capitao", offservice = "off-pm-capitao", withdraw = false, manager = false },
            [5] = { inservice = "pm-tenente", offservice = "off-pm-tenente", withdraw = false, manager = false },
            [6] = { inservice = "pm-sargento", offservice = "off-pm-sargento", withdraw = false, manager = false },
            [7] = { inservice = "soldado", offservice = "off-soldado", withdraw = false, manager = false },
            [8] = { inservice = "recruta", offservice = "off-recruta", withdraw = false, manager = false },
        }
    },
    ['policia-civil'] = {
        chest = "policia-civil",
        bank = false,
        members = 50,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "delegado", offservice = "off-delegado", withdraw = false, manager = true },
            [2] = { inservice = "escrivao", offservice = "off-escrivao", withdraw = false, manager = false },
            [3] = { inservice = "investigador", offservice = "off-investigador", withdraw = false, manager = false },
        }
    },
    ['bennys'] = {
        chest = false,
        bank = false,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "bennys-lider", offservice = "off-bennys-lider", withdraw = false, manager = true },
            [2] = { inservice = "bennys-vice-lider", offservice = "off-bennys-vice-lider", withdraw = false, manager = true },
            [3] = { inservice = "bennys-tunador", offservice = "off-bennys-tunador", withdraw = false, manager = false },
            [4] = { inservice = "bennys-mecanico", offservice = "off-bennys-mecanico", withdraw = false, manager = false },
        }
    },
    ['lossantos'] = {
        chest = false,
        bank = false,
        members = 20,
        blacklist = {
            active = true,
            time = 3
        },
        permissions = {
            [1] = { inservice = "ls-lider", offservice = "off-ls-lider", withdraw = false, manager = true },
            [2] = { inservice = "ls-vice-lider", offservice = "off-ls-vice-lider", withdraw = false, manager = true },
            [3] = { inservice = "ls-tunador", offservice = "off-ls-tunador", withdraw = false, manager = false },
            [4] = { inservice = "ls-mecanico", offservice = "off-", withdraw = false, manager = false },
        }
    },
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
