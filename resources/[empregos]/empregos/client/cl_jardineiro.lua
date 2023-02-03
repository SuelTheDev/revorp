local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")
local vRP = Proxy.getInterface("vRP")
local src = {}
Tunnel.bindInterface("empJardineiro", src)
local vSERVER = Tunnel.getInterface("empJardineiro")
local emprego_nome <const> = "jardineiro"
local cfg = ConfigEmprego[emprego_nome] or {}
local emservico = false
--main thread
local main_thread = false
local function MainThread()
    if not main_thread then
        main_thread = true
        CreateThread(function()
            while not emservico and not LocalPlayer.state.entrou_servico do
                local msec = 5000
                local ped = PlayerPedId()
                local pos = GetEntityCoords(ped)
                for _, v in pairs(cfg.coordenadas) do
                    local distance = #(pos - v)
                    if distance <= 3 then
                        msec = 3
                        DrawMarker(21, v.x, v.y, v.z - 0.7, 0, 0, 0, 0, 0, 0, 0.2, 0.2, 0.3, 255, 255, 255, 255, 0, 0, 0
                            , 1)
                        DrawMarker(27, v.x, v.y, v.z - 1, 0, 0, 0, 0, 0, 0, 0.4, 0.4, 0.5, 135, 206, 250, 255, 0, 0, 0, 1)
                        drawText2D("PRESSIONE ~b~E~w~ PARA ACESSAR O ~b~EMPREGO~w~", 1, 0.5, 0.93, 0.55, 255, 255, 255,
                            180)
                        if distance <= 1.2 then
                            if IsControlJustPressed(0, 38) then
                                coordenadaIniciada = v
                                local rc, level, exp = vSERVER.CheckLevel()
                                local money = vSERVER.return_dinheiro()
                                SetNuiFocus(true, true)
                                SendNUIMessage(
                                    {
                                        action = "showMenu",
                                        rc = rc,
                                        level = level,
                                        exp = exp,
                                        money = money,
                                        exp_por_level = cfg.exp_por_level,
                                        quantidade_de_blips = #cfg.entregas,
                                        emprego_nome = cfg.title,
                                        veiculo = cfg.carro_titulo,
                                        imagem = cfg.image,
                                        emprego_id = emprego_nome
                                    })
                                StartScreenEffect("MenuMGSelectionIn", 0, true)
                            end
                        end
                    end
                end
                Wait(msec)
            end
            main_thread = false
        end)
    end
end

local function CollectThread()
    CreateThread(function()
        while emservico do
            local idle = 2000
            local entregaCoord = cfg.entregas[destino]
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            local continue = false
            local distance = #(entregaCoord - pos)
            if distance < 50 then
                idle = 5
                DrawMarker(21, entregaCoord.x, entregaCoord.y, entregaCoord.z + 0.20, 0, 0, 0, 0, 180.0, 130.0, 2.0, 2.0
                    , 1.0, 255, 0
                    , 0, 50, 1, 0, 0, 1)
                if distance < 1.5 then
                    if IsControlJustPressed(0, 38) then

                        if cfg.carro_emprego then
                            local vehicle = GetPlayersLastVehicle(ped)
                            if vehicle == 0 or (vehicle ~= 0 and GetEntityModel(vehicle) ~= cfg.carro_emprego) then
                                TriggerEvent("Notify", "negado", "Você não tem o veículo correto para o transporte")
                                continue = true
                            end
                        end

                        if not continue then
                            if vSERVER.checkItem() then
                                ExecuteCommand("e plantar")
                                FreezeEntityPosition(ped, true)
                                TriggerEvent('cancelando', true)
                                TriggerEvent("progress", 5000, "Platando")
                                Wait(5000)
                                FreezeEntityPosition(ped, false)
                                vRP.stopAnim(false)
                                TriggerEvent('cancelando', false)
                                if destino == #cfg.entregas then
                                    vSERVER.addRota()
                                    destino = 1
                                else
                                    destino = destino + 1
                                end
                                CriandoBlip(cfg.entregas, destino)
                                local dinheiro_total = vSERVER.pagar()
                                dinheiro_ganho = dinheiro_ganho + dinheiro_total
                                local rc, level, exp = vSERVER.CheckLevel()                   
                               
                                SendNUIMessage({ action = "atualizar", rc = rc, level = level, exp = exp,
                                    checkpoint = destino,
                                    dinheiro_ganho = dinheiro_ganho, exp_por_level = cfg.exp_por_level,
                                    quantidade_de_blips = #cfg.entregas })
                            end
                        end
                    end
                end
            end
            Wait(idle)
        end
    end)
end

local function checarServico(cb)
    if #(coordenadaIniciada - GetEntityCoords(PlayerPedId())) < 2.0 then
        SetNuiFocus(false, false)
        StopScreenEffect("MenuMGSelectionIn")
        emservico = true
        LocalPlayer.state:set("entrou_servico", "servico:" .. emprego_nome)
        destino = 1
        CriandoBlip(cfg.entregas, destino)
        local rc, level, exp = vSERVER.CheckLevel()
        cb({
            retorno = 'iniciou',
            rc = rc,
            level = level,
            exp = exp,
            exp_por_level = cfg.exp_por_level,
            quantidade_de_blips = #cfg.entregas
        })
    else
        cb({ status = false })
    end
end

AddEventHandler("empregos:client:iniciar", function(empregonome, cb)
    if empregonome == emprego_nome and not emservico then
        checarServico(cb)
    end
end)

AddStateBagChangeHandler("entrou_servico", nil, function(_, _, value)
    if value ~= "servico:" .. emprego_nome then
        emservico = false
        MainThread()
    else
        CancelThread()
        CollectThread()
    end
end)
