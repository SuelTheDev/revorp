local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local cfg = module("nxgroup-bank", "config")
local vRP = Proxy.getInterface("vRP")
NexusServer = Tunnel.getInterface("nxgroup-bank")
local Nexus = {}
Tunnel.bindInterface("nxgroup-bank", Nexus)
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ VARIÁVEIS ]--------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local bancos = cfg.bancos
local atms = cfg.atms
local roubando = false
local cooldown = 0
local data = {}
-- local cache = false
-- local cachePix = false
-- local cacheGraph = false
local configNames = {}
local banco = vRP.getBankMoney(user_id)
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ THREAD ]-----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local function toggleNuiFrame(shouldShow)
    SetNuiFocus(shouldShow, shouldShow)
    SendNUIMessage({ action = 'setVisable', show = shouldShow })
end

RegisterNUICallback('closeNui', function(_, cb)
    toggleNuiFrame(false)
    cb({})
end)

RegisterNUICallback('showFrame', function(_, cb)
    toggleNuiFrame(true)
    cb({})
end)

function valueToNui()    
    local nome_banco = cfg.nomeBanco
    local image_banco = cfg.imgBanco
    local transacoes = NexusServer.getTransacoes()
    local pix = NexusServer.Pixcadastrado()
    local name, bank_money, wallet_money, multa = NexusServer.getIdentity()

    SendNUIMessage(
        {
            action = "setInformation",
            name = name,
            bank_money = bank_money,
            wallet_money = wallet_money,
            multa = multa,
            nome_banco = nome_banco,
            image_banco = image_banco,
            transacoes = transacoes,
            pix = pix
        })
end

RegisterNUICallback("updateValue", function()
    valueToNui()
end)

RegisterNUICallback("depositar", function(data)
    -- cache = false
    NexusServer.depositar(data.amount)
end)
RegisterNUICallback("sacar", function(data)
    -- cache = false
    NexusServer.sacar(data.amount)
end)
RegisterNUICallback("transferir", function(data)
    -- cache = false
    NexusServer.transferir(data.transferTo, data.amount)
end)
RegisterNUICallback("multas", function(data)
    -- cache = false
    NexusServer.pagarMultas(data.amount)
    toggleNuiFrame(false)
end)



RegisterNUICallback("pix", function(data)
    -- cache = false
end)

RegisterNUICallback("cadastrarPix", function(data)
    -- cachePix = false
    valueToNui()
    NexusServer.cadastrarPix(data.value)
end)

RegisterNUICallback("deletarPix", function(data)
    -- cachePix = false
    valueToNui()
    NexusServer.deletarPix(data.value)
end)


Citizen.CreateThread(function()
  
    local auth = NexusServer.checkAuth()
    local egSleep = 1000
    while auth do
        local ped = PlayerPedId()
        local x, y, z = table.unpack(GetEntityCoords(ped))
        local ui = GetMinimapAnchor()

        if not IsPedInAnyVehicle(ped) and GetSelectedPedWeapon(ped) ==
            GetHashKey("WEAPON_UNARMED") then
            for k, v in pairs(bancos) do
                local distance = Vdist(x, y, z, v.x, v.y, v.z)
                if distance < 1 then
                    egSleep = 4
                    drawTxt(ui.right_x + 0.25, ui.bottom_y - 0.100,
                        "PRESSIONE ~r~E~w~ PARA ~r~ABRIR O BANCO")
                    if IsControlJustPressed(0, 38) then
                        valueToNui()
                        toggleNuiFrame(true)
                    end
                end
            end
            for k, v in pairs(atms) do
                local distance = Vdist(x, y, z, v.x, v.y, v.z)
                if distance < 1 then
                    egSleep = 4
                    drawTxt(ui.right_x + 0.25, ui.bottom_y - 0.100,
                        "PRESSIONE ~r~E~w~ PARA ~r~ABRIR O CAIXA ELETRÔNICO")
                    if IsControlJustPressed(0, 38) then
                        valueToNui()
                        toggleNuiFrame(true)
                    end
                end
            end
            if roubando then
                egSleep = 4
                drawTxt(ui.right_x + 0.25, ui.bottom_y - 0.100, "AGUARDE ~r~" ..
                cooldown .. "~w~ SEGUNDOS PARA ~r~TERMINAR O ROUBO")
                drawTxt(ui.right_x + 0.27, ui.bottom_y - 0.075,
                    "PRESSIONE ~r~M~w~ PARA ~r~PARAR~w~ O ROUBO")
                if IsControlJustPressed(0, 244) or GetEntityHealth(ped) <= 100 or
                    IsPedBeingStunned(ped) then
                    roubando = false
                    ClearPedTasks(ped)
                    NexusServer.cancelRobbery(cooldown)
                    TriggerEvent('cancelando', false)
                end
            end
        end
        Wait(egSleep)
        egSleep = 1000
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- [ FUNÇÕES DO SERVER ] ----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("EG:RouboFinalizado")
AddEventHandler("EG:RouboFinalizado", function()
    local ped = PlayerPedId()
    roubando = false
    ClearPedTasks(ped)
    TriggerEvent('cancelando', false)
end)

RegisterNetEvent("EG:RoubarCaixaEletronico")
AddEventHandler("EG:RoubarCaixaEletronico", function(x, y, z, head, secs)
    andamento = true
    SetEntityHeading(PlayerPedId(), head)
    SetEntityCoords(PlayerPedId(), x, y, z - 1, false, false, false, false)
    SetPedComponentVariation(PlayerPedId(), 5, 45, 0, 2)
    TriggerEvent('cancelando', true)
    contador(secs)
end)

RegisterNetEvent('EG:blip:remover:caixaeletronico')
AddEventHandler('EG:blip:remover:caixaeletronico', function()
    if DoesBlipExist(blip) then
        RemoveBlip(blip)
        blip = nil
    end
end)

RegisterNetEvent('EG:blip:criar:caixaeletronico')
AddEventHandler('EG:blip:criar:caixaeletronico', function(x, y, z)
    if not DoesBlipExist(blip) then
        blip = AddBlipForCoord(x, y, z)
        SetBlipScale(blip, 0.5)
        SetBlipSprite(blip, 1)
        SetBlipColour(blip, 59)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Roubo: Caixa Eletrônico")
        EndTextCommandSetBlipName(blip)
        SetBlipAsShortRange(blip, false)
        SetBlipRoute(blip, true)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- [ FUNÇÕES ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function contador(segundos)
    CreateThread(function()
        while segundos > 0 do
            cooldown = segundos
            segundos = segundos - 1
            Wait(1000)
        end
    end)
end

function drawTxt(x, y, text, r, g, b)
    SetTextFont(4)
    SetTextScale(0.48, 0.48)
    SetTextColour(255, 255, 255, 190)
    SetTextEdge(2, 0, 0, 0, 255)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end

function GetMinimapAnchor()
    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local safezone_y = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, res_y = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local yscale = 1.0 / res_y
    local Minimap = {}
    Minimap.width = xscale * (res_x / (4 * aspect_ratio))
    Minimap.height = yscale * (res_y / 5.674)
    Minimap.left_x = xscale *
        (res_x *
        (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.bottom_y = 1.0 - yscale *
        (res_y *
        (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.right_x = Minimap.left_x + Minimap.width
    Minimap.top_y = Minimap.bottom_y - Minimap.height
    Minimap.x = Minimap.left_x
    Minimap.y = Minimap.top_y
    Minimap.xunit = xscale
    Minimap.yunit = yscale
    return Minimap
end
