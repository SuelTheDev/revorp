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
    ["FS"] = { --organization name
        chest       = "fs", --chest name of logs
        bank        = true, --active bank (true|false)
        members     = 20, --maxmembers of organization
        blacklist   = {
            active = false, --active blacklist (true|false)
            time   = 3, --in days
        },
        permissions = {
            [1] = {
                inservice  = "LiderFS", --group in service
                offservice = false, --group off service
                withdraw   = true, --permission to withdraw (true|false)
                manager    = true --permission to manager members (true|false)
            },
            [2] = {
                inservice  = "ViceLiderFS",
                offservice = false,
                withdraw   = false,
                manager    = false
            }
        }
    },
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
