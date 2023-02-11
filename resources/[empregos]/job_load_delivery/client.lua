local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Tools = module("vrp", "lib/Tools")

vRP = Proxy.getInterface("vRP")
vSERVER = Tunnel.getInterface("job_load_delivery")
Cda = {}
Animations = {}
local _current = nil
local _vehicles = {}
local _object = nil;
local index = 0
local liberado = false
local blip = 0
local blip2 = 0
local coletar = 0
local _attach = false
local _canPressButton = true
local _canPressButtonPick = true
local _canPressButtonCollect = true


RegisterNetEvent("syncdeleteobj")
AddEventHandler("syncdeleteobj",function(index)
    if NetworkDoesNetworkIdExist(index) then
        local v = NetToPed(index)
        if DoesEntityExist(v) and IsEntityAnObject(v) then
            Citizen.InvokeNative(0xAD738C3085FE7E11,v,true,true)
            SetEntityAsMissionEntity(v,true,true)
            NetworkRequestControlOfEntity(v)
            Citizen.InvokeNative(0x539E0AE3E6634B9F,Citizen.PointerValueIntInitialized(v))
            DeleteEntity(v)
            DeleteObject(v)
            SetObjectAsNoLongerNeeded(v)
        end
    end
end)

function Cda.AttachObjectToBone(attachBoneObject)
    local ped = PlayerPedId()
    local coords = GetOffsetFromEntityInWorldCoords(ped, 0, 0, -5)
    local objectModel = GetHashKey(attachBoneObject.Prop)
    local requestTimeout = GetGameTimer() + 5000

	RequestModel(objectModel)
	while not HasModelLoaded(objectModel) and GetGameTimer() <= requestTimeout do
		RequestModel(objectModel)
		Citizen.Wait(10)
	end
    
    local objectEntity = CreateObject(objectModel, coords.x, coords.y, coords.z, true, true, true)
    Entity(objectEntity).state:set('checked', 1, true)

    SetEntityCollision(objectEntity, false, false) -- Fix Prop Colision
    AttachEntityToEntity(objectEntity, ped, GetPedBoneIndex(ped, attachBoneObject.Bone), attachBoneObject.Position[1], attachBoneObject.Position[2], attachBoneObject.Position[3],
        attachBoneObject.Rotation[1], attachBoneObject.Rotation[2], attachBoneObject.Rotation[3], false, false, false, false, 2, true)

    SetEntityAsMissionEntity(object,true,true)
    SetModelAsNoLongerNeeded(objectModel)

    return objectEntity
end

-- DeAttachObject
-- @param objectId number
function Cda.DeAttachObject(objectId)
    if (DoesEntityExist(objectId) and IsEntityAnObject(objectId)) then
        SetEntityAsMissionEntity(objectId, false, true)
        DetachEntity(objectId, true, true)
        DeleteObject(objectId)
    end
end

local function IsWithValidCloth(cloths)
    -- if cloths ~= nil and not table.empty(cloths) then
    --     for _, value in pairs(cloths) do
    --         if not table.empty(value) and Cda.IsWithCloth(value) then
    --             return true
    --         end
    --     end
    --     Cda.AddNotification(Cda.Translate("Attention"), "É necessário estar com uniforme para trabalhar!", "error")
    --     return false
    -- end
    return true
end

local function generateNpc()
    for _,v in ipairs(_config) do
        if v.Npc and v.Npccoord then
            local x,y,z,w = v.Npccoord.x, v.Npccoord.y, v.Npccoord.z, v.Npccoord.w
            local modelHash = GetHashKey(v.Npc)

            RequestModel(modelHash)
            while not HasModelLoaded(modelHash) do
                Citizen.Wait(50)
            end

            local ped = CreatePed(4, modelHash, x, y, z, w, false, true);
            FreezeEntityPosition(ped, true)
            SetEntityInvincible(ped, true)
            SetBlockingOfNonTemporaryEvents(ped, true)

            if v.NpcCloth ~= nil then
                ClearPedDecorations(ped)
            --    Cda.SetCustomizationByPed(ped, v.NpcCloth) arrumar aq
            end
            
        end
    end
end

local function CreateDelivery()
    if _current.RandomDelivery then
        index = index + 1 < #_current.Points and index + 1 or 1
        blip = AddBlipForCoord(_current.Points[index][1],_current.Points[index][2],_current.Points[index][3])
        SetBlipSprite(blip, 1)
        SetBlipColour(blip, _current.BlipColor or 5)
        SetBlipScale(blip, 0.7)
        SetBlipAsShortRange(blip, false)
        SetBlipRoute(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Entrega")
        EndTextCommandSetBlipName(blip)
    else
        index = 1
        blip = AddBlipForCoord(_current.Points[index][1],_current.Points[index][2],_current.Points[index][3])
        SetBlipSprite(blip, 1)
        SetBlipColour(blip, _current.BlipColor or 5)
        SetBlipScale(blip, 0.7)
        SetBlipAsShortRange(blip, false)
        SetBlipRoute(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Entrega")
        EndTextCommandSetBlipName(blip)
    end
end

local function CreateCollect()
    if not _current.RandomDelivery then
        coletar = coletar + 1 < #_current.Collect and coletar + 1 or 1
        blip2 = AddBlipForCoord(_current.Collect[coletar][1],_current.Collect[coletar][2],_current.Collect[coletar][3])
        SetBlipSprite(blip2, 1)
        SetBlipColour(blip2, 2)
        SetBlipScale(blip2, 0.7)
        SetBlipAsShortRange(blip, false)
        SetBlipRoute(blip2, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Coletar")
        EndTextCommandSetBlipName(blip2)
        liberado = false
    end
end

function Cda.StopAnim(upper)
    if upper then
        ClearPedSecondaryTask(PlayerPedId())
    else
        ClearPedTasks(PlayerPedId())
    end
end

local function CancelMission()
    if vSERVER.request("Você saiu do emprego!", "Você deseja sair do emprego?") then ---- add um request
        if blip > 0 then RemoveBlip(blip) end
        if blip2 > 0 then RemoveBlip(blip2) end

        _current = nil
        _attach = false
        index = 0
        blip = 0
        coletar = 0
        blip2 = 0
        liberado = false
       --- Cda.SetWorking()
        Cda.StopAnimation(true)
        vSERVER.Remove()
      ---  Cda.AddNotification(Cda.Translate("Attention"), Cda.Translate("LeaveCfm"), "info") add notify
        if DoesEntityExist(_object) then
            TriggerServerEvent("trydeleteobj",ObjToNet(_object))
            _object = nil
        end
    end
end

local function IsValidVehicle(hash)
    for _,v in ipairs(_current.Vehicle) do
        return GetHashKey(v) == hash or GetHashKey(v) == -881146908 or GetHashKey(v) == -714925639
    end

    return false
end

function Cda.IsNearPoint(x, y, z, distance)
    local coords = GetEntityCoords(PlayerPedId())
    local _distance = #(coords - vector3(x, y, z))
    return _distance <= distance
end

local function NearCollect()
    for _,v in ipairs(_config) do
        if _current.RandomDelivery then
            if _current.Code == v.Code and Cda.IsNearPoint(_current.Collect[1][1],_current.Collect[1][2],_current.Collect[1][3], 2) then
                return true, _current.Collect[1][1],_current.Collect[1][2],_current.Collect[1][3]
            end
        else
            if _current.Code == v.Code and Cda.IsNearPoint(_current.Collect[coletar][1],_current.Collect[coletar][2],_current.Collect[coletar][3], 2) then
                return true, _current.Collect[coletar][1],_current.Collect[coletar][2],_current.Collect[coletar][3]
            end
        end
    end

    return false
end

local function GetVehicleKey(vehicle)
    return GetEntityModel(vehicle).. ":" ..GetVehicleNumberPlateText(vehicle)
end

local function GetBoxByVehicle(vehicle)
    if vehicle and IsValidVehicle(GetEntityModel(vehicle)) then
        for k,v in pairs(_vehicles) do
        end
        if _vehicles[GetVehicleKey(vehicle)] then
            local teste = 0
            for k,v in pairs(_vehicles[GetVehicleKey(vehicle)]) do
                teste = teste + 1
            end
            return teste
        end
    end
    return 0
end

local function BoxVehicle(vehicle)
    if _current.Prop then
        local coords = GetOffsetFromEntityInWorldCoords(entity, 0.0, 0.0, -5.0);
        local index = GetBoxByVehicle(vehicle);
        local item = _current.Attach[index + 1];

        if not table.empty(item) then
            local prop = CreateObject(GetHashKey(_current.Prop), coords.x, coords.y, coords.z, true, true, true)
            Entity(prop).state:set('checked', 1, true)
            AttachEntityToEntity(prop, vehicle, 0, item[1], item[2], item[3], 0.0, 0.0, 0.0, false, false, true, false, 2, true)
            FreezeEntityPosition(prop, true)
            local isVisible = true
            if _current.IsVisible ~= nil then
                isVisible = _current.IsVisible
            end
            SetEntityVisible(prop, isVisible)
            SetEntityCollision(prop, isVisible, isVisible)
            if not _current.HasInfiniteProp then
                TriggerServerEvent("loadDelivery:increaseBox", _current.Code, GetVehicleKey(vehicle), ObjToNet(prop))
            end
        end
    end
end

--- Resource Start Event
AddEventHandler('onClientResourceStart', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    Citizen.Wait(5000)
    TriggerServerEvent("loadDelivery:sync")
    generateNpc()
   -- Cda.SetWorking(nil)
end)

RegisterNetEvent("loadDelivery:sync", function(string)
    _vehicles = string
end)

local function StartMission(dto)
    local textRequest = ""
    local textAccept = ""

    textRequest = "Deseja aceitar um trabalho temporário?"
    textAccept = "Você entrou em um emprego temporário"
    if vSERVER.request(textAccept,textRequest) then ----- add request
       vSERVER.SetClothJob(dto.CharacterCloths)
        ---Cda.SetWorking(dto.Code)
        _current = dto
        CreateDelivery()
        CreateCollect()
        liberado = false
        ---Cda.AddNotification(Cda.Translate("Attention"), textAccept, "info") add notify
    else
        _current = nil
    end
end

function Cda.Thread(callback, threadDelay)
    CreateThread(function()
        local delay = threadDelay or 0
        while true do
            delay = callback() or delay
            Wait(delay)
        end
    end)
end

--- Create a command and then a keymapping for the specified function
---@param callback function
---@param commandName string
---@param description string
---@param mapper string
---@param binding string
---@param restricted boolean
function Cda.KeyMapping(callback, commandName, description, mapper, binding, restricted)
    RegisterCommand(commandName, callback, restricted or false)
    RegisterKeyMapping(commandName, description, mapper or "keyboard", binding or "e")
end

function Cda.GetNearestVehicles(radius)
    local result = {}
    local pedCoords = GetEntityCoords(PlayerPedId())

    local vehicles = {}
    local it,veh = FindFirstVehicle()
    if veh then
		table.insert(vehicles,veh)
	end

	local ok
    repeat
		ok,veh = FindNextVehicle(it)
		if ok and veh then
			table.insert(vehicles,veh)
		end
	until not ok
	EndFindVehicle(it)

    for _,veh in pairs(vehicles) do
		local coordsVeh = GetEntityCoords(veh)
		local distance = #(pedCoords - coordsVeh)
		if distance <= radius then
			result[veh] = distance
		end
	end

    return result
end

function Cda.GetNearestVehicle(radius)
    local vehicle = nil
	local vehicles = Cda.GetNearestVehicles(radius)
	local min = radius + 0.0001

	for veh,dist in pairs(vehicles) do
		if dist < min then
			min = dist
			vehicle = veh
		end
	end

	return vehicle
end

--- KeyMapping
Cda.KeyMapping(function()
    if table.empty(_config) then
        return
    end

    if _canPressButtonPick then
        _canPressButtonPick = false

        local ped = PlayerPedId()
        if _current and not IsPedInAnyVehicle(ped, true) then
            local vehicle = Cda.GetNearestVehicle(10)

            if vehicle and IsValidVehicle(GetEntityModel(vehicle)) then
                local vehCoords = GetOffsetFromEntityInWorldCoords(vehicle, 0.0, -2.5, 1.0)

                if Cda.IsNearPoint(vehCoords.x, vehCoords.y, vehCoords.z, 3) then
                    local box = GetBoxByVehicle(vehicle)
                    if _current.HasInfiniteProp then
                        box = 1
                    end
                    if not _attach then
                        if box > 0 then
                            _attach = true
                            box = box - 1
                            if not _current.HasInfiniteProp then
                                TriggerEvent("Notify","sucesso","O veiculo esta com "..box.."/"..#_current.Attach.." caixas.")
                                TriggerServerEvent("loadDelivery:decreaseBox", _current.Code, GetVehicleKey(vehicle));
                            end
                            Cda.PlayAnimationDto({
                                Dictionary = "anim@heists@box_carry@",
                                Name = "idle",
                                Infinite = true,
                                Upper = true
                            },{
                                Bone = 28422,
                                Position = vector3(0, 0, 0),
                                Prop = _current.Prop,
                                Rotation = vector3(0, 0, 0)
                            })
                        end
                    else
                        if box < #_current.Attach then
                            _attach = false
                            box = box + 1
                            if not _current.RandomDelivery and liberado == true then RemoveBlip(blip2) Wait(500) CreateCollect() end
                            if not _current.HasInfiniteProp then
                                TriggerEvent("Notify","sucesso","O veiculo esta com "..box.."/"..#_current.Attach.." caixas.")
                            end
                            BoxVehicle(vehicle)
                            Cda.StopAnimation(true)
                            if DoesEntityExist(_object) then
                                TriggerServerEvent("trydeleteobj",ObjToNet(_object))
                                _object = nil
                            end
                        end
                    end
                end

            end
        end

        Citizen.Wait(1000)
        _canPressButtonPick = true
    end
    
end, "loadDelivery:collectPick", "Open_01", "keyboard", "e")

function Cda.PlayAnimation(ped, dict, anim)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Citizen.Wait(10)
    end

    if HasAnimDictLoaded(dict) then
        TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,1,0,0,0,0)
    end
end

function Cda.CarregarObjeto(dict,anim,prop,flag,hand,pos1,pos2,pos3,pos4,pos5,pos6)

	local ped = PlayerPedId()
	local mHash = GetHashKey(prop)
    local object = nil

	RequestModel(mHash)
	while not HasModelLoaded(mHash) do
		RequestModel(mHash)
		Citizen.Wait(10)
	end

	if anim ~= "" then
		tvRP.CarregarAnim(dict)
		TaskPlayAnim(ped,dict,anim,3.0,3.0,-1,flag,0,0,0,0)
	end

	if pos1 then
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(mHash,coords.x,coords.y,coords.z,true,true,true)
        Entity(object).state:set('checked', 1, true)
		AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,hand),pos1,pos2,pos3,pos4,pos5,pos6,true,true,false,true,1,true)
	else
		local coords = GetOffsetFromEntityInWorldCoords(ped,0.0,0.0,-5.0)
		object = CreateObject(mHash,coords.x,coords.y,coords.z,true,true,true)
        Entity(object).state:set('checked', 1, true)
		AttachEntityToEntity(object,ped,GetPedBoneIndex(ped,hand),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
	end

	SetEntityAsMissionEntity(object,true,true)
	SetModelAsNoLongerNeeded(mHash)

    return object;
end

-- StopAnimation
-- @param upper boolean
function Cda.StopAnimation(upper)
    if upper == nil then
        upper = true
    end

    for _, item in pairs(Animations) do
        item.Running = false
    end

    if (upper) then
        ClearPedSecondaryTask(PlayerPedId())
    else
        ClearPedTasks(PlayerPedId())
    end
end

function Cda.LoadAnimDictionary(dictionary)
    local timeout = 15000
    local time = 0
    local hasLoaded = false
    RequestAnimDict(dictionary)
    while time < timeout do
        if not HasAnimDictLoaded(dictionary) then
            time = time + 50
            Wait(50)
        else
            hasLoaded = true
            time = timeout
        end
    end
    if not hasLoaded then
        print("Error requesting anim dictionary "..dictionary.." timeout after "..tostring(timeout).."ms")
    end
end

function Cda.RunAnimation(animation, ped, inSpeed, outSpeed, flags)
    TaskPlayAnim(ped, animation.Dictionary, animation.Name, inSpeed or 2.0, outSpeed or 2.0, -1, flags, 0, false, false, false)
    Wait(1)
    Cda.WaitForAnimationEnd(ped, animation.Dictionary, animation.Name)
end

function  Cda.WaitForAnimationEnd(pedId,  dictionary,  name)
    while IsEntityPlayingAnim(pedId, dictionary, name, 3) and GetEntityAnimCurrentTime(pedId, dictionary, name) <= 0.95 do
        Wait(1)
    end
end

function Cda.PlayAnimationDto(animation,attachBoneObject,ped)
    table.insert(Animations,animation)

    local flags = animation.Flags or 1
    local loops = animation.Loop or 1
    local attachedObj = nil
    
    if not ped then
        ped = PlayerPedId()
    end

    if animation.Upper then
        flags = flags + 48
    end
    
    if attachBoneObject then
        attachedObj = Cda.AttachObjectToBone(attachBoneObject);
    end

    if loops > 1 then
        flags = flags + 1
    end
    
    Cda.StopAnimation(animation.Upper)

    animation.Running = true
    Cda.LoadAnimDictionary(animation.Dictionary)

    CreateThread(function()
        if animation.Infinite then
            while animation.Running do
                if (not IsEntityPlayingAnim(ped, animation.Dictionary, animation.Name, 3)) then
                    Cda.RunAnimation(animation, ped, animation.InSpeed, animation.OutSpeed, flags)
                end
                Citizen.Wait(500)
            end
        else
            for i = 1, loops, 1 do
                local isFirst = i == 1
                local isLast = i == loops
    
                local inSpeed = isFirst and 3.0 or 2.0
                local outSpeed = isLast and -3.0 or 2.0
    
                Cda.RunAnimation(animation, ped, inSpeed, outSpeed, flags)
                if not animation.NoStopAfterLoop then
                    Cda.StopAnimation(animation.Upper)
                end
            end
        end

        if attachedObj ~= nil then
            Cda.DeAttachObject(attachedObj)
        end
    end)
end

--- KeyMapping
Cda.KeyMapping(function()
    if table.empty(_config) then
        return
    end

    if _canPressButtonCollect then
        _canPressButtonCollect = false
        if _current and NearCollect() then
            if not _attach then
                _attach = true

                Cda.PlayAnimationDto({
                    Dictionary = "anim@heists@box_carry@",
                    Name = "idle",
                    Infinite = true,
                    Upper = true
                },{
                    Bone = 28422,
                    Position = vector3(0, 0, 0),
                    Prop = _current.Prop,
                    Rotation = vector3(0, 0, 0)
                }) 
                liberado = true
            else
                liberado = false
                _attach = false
                Cda.StopAnimation(true)

                if DoesEntityExist(_object) then
                    TriggerServerEvent("trydeleteobj",ObjToNet(_object))
                    _object = nil
                end
            end
        end

        Citizen.Wait(1000)
        _canPressButtonCollect = true
    end
end, "loadDelivery:collect", "Open_02", "keyboard", "e")

Cda.Thread(function()
    while true do 
        local sleep = 1000 
        if _current and _canPressButtonCollect then
            local near, x,y,z = NearCollect()
            if near then
                sleep = 0
                Cda.DrawText3Ds("Pressione ~g~[E] ~w~para pegar o Produto.", vector3(x,y,z) + vector3(0, 0.125, 0.03), {255,255,255,255})
            end
        end
        Wait(sleep)
    end
end)


function table.empty(self)
    for _,_ in pairs(self) do
        return false
    end
    return true
end
--- Thread 
Cda.Thread(function()
    local delay = 500

    if table.empty(_config) or _current == nil then
        return delay
    end

    if _current then
        delay = 4

        local minimap = Cda.GetMinimapAnchor()

        Cda.DrawHelpText("PRESSIONE ~r~F7 ~w~SE DESEJA FINALIZAR O EXPEDIENTE", { minimap.right_x + 0.04, minimap.bottom_y - 0.1 }, { 255,255,255,255 }, 0.35)
        if IsControlJustPressed(0, 168) then
            CancelMission()
        end
    end
    
    return delay
end)

function Cda.DrawHelpText(text,position,color,scale,font)
    if not scale then scale = 0.45 end
    if not color then color = {255, 255, 255, 255} end
    if not font then font = 4 end

    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextColour(color[1], color[2], color[3], color[4])
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(position[1], position[2])
end

function Cda.GetMinimapAnchor()
    if CachedMinimap ~= nil and CachedMinimapTime > GetGameTimer() then
        return CachedMinimap
    end

    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local safezone_y = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, res_y = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local yscale = 1.0 / res_y
    local minimapDto = {}
    minimapDto.width = xscale * (res_x / (4 * aspect_ratio))
    minimapDto.height = yscale * (res_y / 5.674)
    minimapDto.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    minimapDto.bottom_y = 1.0 - yscale * (res_y * (safezone_y * ((math.abs(safezone - 1.0)) * 10)))
    minimapDto.right_x = minimapDto.left_x + minimapDto.width
    minimapDto.top_y = minimapDto.bottom_y - minimapDto.height
    minimapDto.x = minimapDto.left_x
    minimapDto.y = minimapDto.top_y
    minimapDto.xunit = xscale
    minimapDto.yunit = yscale

    CachedMinimap = minimapDto
    CachedMinimapTime = GetGameTimer() + 600000

    return CachedMinimap
end

--- Thread 2
Cda.Thread(function()
    local delay = 500

    if table.empty(_config) or _current == nil then
        return delay
    end

    local x,y,z = table.unpack(_current.Points[index])
    local ped = PlayerPedId()
    if _attach then
        delay = 4

        DisableControlAction(1, 16, true)
        DisableControlAction(1, 17, true)
        DisableControlAction(1, 21, true)
        DisableControlAction(1, 22, true)
        DisableControlAction(1, 24, true)
        DisableControlAction(1, 25, true)

        if IsPedInAnyVehicle(ped, true) then
            local veh = GetVehiclePedIsIn(ped, false);
            TaskLeaveVehicle(ped, veh, 1);
        end

        if Cda.IsNearPoint(x,y,z, 50) then
            Cda.DrawText3Ds("Pressione ~g~[E] ~w~para entregar.", vector3(x,y,z) + vector3(0, 0.125, 0.03), {255,255,255,255})
            if IsControlJustPressed(0,38) and Cda.IsNearPoint(x,y,z, 2) and IsWithValidCloth(_current.CharacterCloths) then
                if blip > 0 then
                    _attach = false
                    
                    RemoveBlip(blip)
                    Cda.StopAnimation(true)
              --      Cda.AddReputation(_current.Code)
                   -- TriggerServerEvent("loadDelivery:payment", _current.Code);
                    vSERVER.payment(_current.Code)
                    if DoesEntityExist(_object) then
                        TriggerServerEvent("trydeleteobj",ObjToNet(_object))
                        _object = nil
                    end
                    CreateDelivery();
                end
            end
        end
    end
    
    return delay
end)

function Cda.DrawText3Ds(text, position, color, textScale, font)
    local _, screenX, screenY = GetScreenCoordFromWorldCoord(position.x, position.y, position.z)

    if not textScale then
        textScale = 0.35
    end

    if not font then
        font = 4
    end

    SetTextScale(textScale, textScale)
    SetTextFont(font)
    SetTextProportional(true)
    SetTextColour(color[1],color[2],color[3],color[4])
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(screenX, screenY)
end

--- Thread 3
Cda.Thread(function()
    local delay = 10000

    if table.empty(_config) or _current == nil then
        return delay
    end

    local ped = PlayerPedId()
    for k,v in ipairs(_config) do
        local model = GetHashKey(v.Prop)
        local pedCoords = GetEntityCoords(ped)
        local handle = GetClosestObjectOfType(pedCoords.x, pedCoords.y, pedCoords.z, 100.0, model, false, true, true)

        while handle > 0 and NetworkGetEntityIsNetworked(handle) do
            local result = false
            local netId = NetworkGetNetworkIdFromEntity(handle)

            if result then
                delay = 500
                handle = GetClosestObjectOfType(pedCoords.x, pedCoords.y, pedCoords.z, 100, model, false, true, true)
            else
                handle = 0
            end
        end
    end
    
    return delay
end)



RegisterCommand("rjob", function() 
    if not table.empty(Character) and Character.IsAdmin then
        local ped = PlayerPedId()
        local cloth = Cda.GetCurrentCloth(ped)
        if cloth ~= nil then
            cloth.CharacterId = 0
            cloth.IsMale = GetEntityModel(ped) == `mp_m_freemode_01`
            cloth.CHair = nil 
            cloth.PEyes = nil
            local config = {
                Multiline = true,
                ReadOnly = false,
                Title = "Roupas",
                Value = json.encode(cloth)
            }
            Cda.Prompt(config)
        end
    end
end, false)

local function GetByCode(code)
    if code and not table.empty(_config) then
        for _,dto in pairs(_config) do
            if dto and dto.Code == code then
                return dto
            end
        end 
    end
    return nil
end



local function CloseNui()
    SetNuiFocus(false, false)
    Cda.SendNuiMessage("setShow", false)
end

function Cda.SendNuiMessage(functionName, functionParameters)
    SendNUIMessage({
        type = functionName,
        detail = functionParameters,
        content = functionParameters
    })
end

RegisterNUICallback("close", function (_,cb)
    CloseNui()
    cb()
end)

RegisterNUICallback("init", function (code, cb)
   CloseNui()
   if code then
    local dto = GetByCode(code)
    if dto then
        StartMission(dto)
    end
   end
   cb()
end)


function string.starts(String,Start)
    return string.sub(String,1,string.len(Start))==Start
 end

Cda.Thread(function ()
    if table.empty(_config) then
        return 1000
    end
    local delay = 1000
    for _,dto in ipairs(_config) do
        local x,y,z = table.unpack(dto.Start)
        if Cda.IsNearPoint(x,y,z, 2) then
            delay = 5
            if _canPressButton then
                Cda.DrawHelpText("PRESSIONE ~r~E ~w~PARA INICIAR", vector2(0.020, 0.74))
				DrawMarker(2,x,y,z-0.6,0,0,0,0.0,0,0,0.8,0.8,0.8, 255,0,0,50,0,0,0,10)
                if IsControlJustPressed(0, 38) then
                    _canPressButton = false
                    if _current == nil then
                        if not false then ---- fazer variavel pra check de trabalho
                            StartMission(dto)
                        else
                          --  Cda.AddNotification(Cda.Translate("Attention"), Cda.Translate("InJob"), "error") add notify
                        end
                    else
                        CancelMission()
                    end
                    Wait(1000)
                    _canPressButton = true
                end
            end
        end
    end
    
    return delay
end, 1000)
