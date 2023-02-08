local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
emP = Tunnel.getInterface("emp_caminhao")
vCLIENT = Tunnel.getInterface("vrp_garages")


-----------------------------------------------------------------------------------------------------------------------------------------
-- TUTORIAL
-----------------------------------------------------------------------------------------------------------------------------------------
function LocalPed()
	return PlayerPedId()
end

Citizen.CreateThread(function()
	while true do
		local adcsleep = 1000		
		
		-- [Farmacia] --
		if GetDistanceBetweenCoords(92.97, -226.53, 54.67, GetEntityCoords(LocalPed())) < 3 then
			adcsleep = 5
			DrawText3D(92.97, -226.53, 54.67+1,"Ei! psiu! quer ajuda com umas entregas? pega ai! 🛵")
		end	
		if GetDistanceBetweenCoords(95.6, -232.27, 54.67, GetEntityCoords(LocalPed())) < 6 then
			adcsleep = 5
			DrawText3D(95.6, -232.27, 54.67+1,"Eai meu parceiro, Vamos entregar uns remedios?  Mentalize ~g~E~w~ 🏍")
		end	
		if GetDistanceBetweenCoords( 99.8, -226.18, 54.64, GetEntityCoords(LocalPed())) < 6 then
			adcsleep = 5
			DrawText3D( 99.8, -226.18, 54.64+1,"Ei! Pegue sua Motocicleta aqui  🏍")
		end						
		Citizen.Wait(adcsleep)				
	 		end 
		end)

-- [PEDLIST] --  

local pedlist = {		
	
	{ -228.09, -1330.4, 30.9,285.00,0x9E08633D,"s_m_y_ammucity_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- Emprego Pneus
	{ -223.97, -1334.19, 30.9,351.51,0x9E08633D,"s_m_y_ammucity_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- Emprego Pneus

	
	{ -1253.68, -286.77, 37.36,241.02,0x7DD8FB58,"a_f_y_golfer_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- IFOOD
	{ -1255.88, -297.48, 37.28,218.62,0x7DD8FB58,"a_f_y_golfer_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- IFOOD
	
	{73.28, -1732.51, 29.3,160.81,0x3FB5C3D3,"a_m_m_bevhills_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- ifood carro
	{70.94, -1742.93, 29.3,65.720,0x3FB5C3D3,"a_m_m_bevhills_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- mercado fruta
	{49.73, -1744.13, 29.31,49.65,0x3FB5C3D3,"a_m_m_bevhills_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- carro

	{1514.03, 3785.43, 34.47,160.81,0x3FB5C3D3,"a_m_m_bevhills_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- pescaria
	{1476.53, 3778.33, 31.76,23.95,0x3FB5C3D3,"a_m_m_bevhills_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- pescaria

	{70.57, -1757.8, 29.3,58.693,0x3FB5C3D3,"a_m_m_bevhills_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- padaria

	{ 536.06, -1840.2, 25.34,251.09,0x75D30A91,"s_m_m_trucker_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- GAS serviço
	{ -534.58, -1673.4, 19.37,137.22,0x75D30A91,"s_m_m_trucker_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- lixeiro
	{ -543.49, -1682.79, 19.61,306.31,0x75D30A91,"s_m_m_trucker_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- lixeiro

	{ 86.6, -1609.41, 30.9,235.25,0x75D30A91,"s_m_y_dwservice_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- mxlog
	{ 90.69, -1604.51, 30.9,235.25,0x75D30A91,"s_m_y_dwservice_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- mxlog

	{ 95.6, -232.27, 54.67,342.37,0x1383A508,"csb_car3guy2","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- Farmacia
	{ 92.97, -226.53, 54.67,270.01,0x1383A508,"csb_car3guy2","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- Farmacia
	{ 100.15, -225.33, 54.64,380.01,0x1383A508,"csb_car3guy2","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- Farmacia
	
	{ -599.54, 346.71, 85.2,168.41,0x62018559,"s_m_y_airworker","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- cerveja iniciar
	{-620.13, 343.23, 85.2,277.96,0x62018559,"s_m_y_airworker","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- cerveja  pegar rota
	{-590.53, 338.98, 85.12 ,168.41,0x62018559,"s_m_y_airworker","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- cerveja garagem

	{ 71.06, 108.25, 79.2,333.37,0xD0BDE116,"s_m_m_ups_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- correio iniciar
	{ 79.21, 112.35, 81.17,190.01,0xD0BDE116,"s_m_m_ups_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- correio  pegar caixa
	{ 68.51, 127.9, 79.21 ,190.01,0xD0BDE116,"s_m_m_ups_02","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- correio carro

	{ -427.11, 27.21, 46.31,265.31,0x5244247D,"u_m_y_baygor","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- moveis iniciar
	{ -419.76, 31.05, 46.31,121.21,0x5244247D,"u_m_y_baygor","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- moveis  pegar caixa
	{ -428.37, 21.81, 46.2,190.01,0x5244247D,"u_m_y_baygor","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- moveis carro

	{ 2357.59, 3068.64, 48.19,330.01,0x9E08633D,"s_m_y_ammucity_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- ferro iniciar
	{ 2367.79, 3081.12, 48.16,177.00,0x9E08633D,"s_m_y_ammucity_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- ferro  pegar caixa
	{2373.37, 3068.07, 48.16,8.992,0x9E08633D,"s_m_y_ammucity_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- ferro carro

	{ -824.06, -731.99, 28.06,185.01,0x14D7B4E0,"s_m_m_dockwork_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- eletricista  pegar caixa
	{ -839.86, -741.55, 23.89,185.01,0x14D7B4E0,"s_m_m_dockwork_01","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- eletricista carro
	
	 { -1192.18, -895.53, 14.0,306.00,0x8CDCC057,"csb_burgerdrug","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- ifood recepção taco
	 {  -1195.78, -893.26, 14.0,300.80,0x8CDCC057,"csb_burgerdrug","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- ifood recepção
	 {-1177.14, -892.47, 13.92,310.20,0x62018559,"s_m_y_airworker","anim@heists@heist_corona@single_team","single_team_loop_boss" }, -- -- ifood garagem


	
	
}

-- [THREAD] --

local localPeds = {}
Citizen.CreateThread(function()
	while true do
		local sleep = 2000
		local ped = PlayerPedId()
		local x,y,z = table.unpack(GetEntityCoords(ped))

		for k,v in pairs(pedlist) do
			local distance = GetDistanceBetweenCoords(x,y,z,v[1],v[2],v[3],true)
			if distance <= 30 then
				sleep = 5
				if localPeds[k] == nil then
					RequestModel(GetHashKey(v[6]))
					while not HasModelLoaded(GetHashKey(v[6])) do
						RequestModel(GetHashKey(v[6]))
						Citizen.Wait(10)
					end

					localPeds[k] = CreatePed(4,v[5],v[1],v[2],v[3]-1,v[4],false,false)
					SetEntityInvincible(localPeds[k],true)
					FreezeEntityPosition(localPeds[k],true)
					SetEntityAsMissionEntity(localPeds[k],true,true)
					SetBlockingOfNonTemporaryEvents(localPeds[k],true)
							
					

					if v[7] ~= nil then
						RequestAnimDict(v[7])
						while not HasAnimDictLoaded(v[7]) do
							RequestAnimDict(v[7])
							Citizen.Wait(10)
						end

						TaskPlayAnim(localPeds[k],v[7],v[8],8.0,0.0,-1,1,0,0,0,0)
					end
				end
			else
				if localPeds[k] then
					SetEntityAsMissionEntity(localPeds[k],false,false)
					DeleteEntity(localPeds[k])
					localPeds[k] = nil
				end
			end
		end
		Citizen.Wait(sleep)
	end
end)


-- [FUNCTIONS] --

function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end

function DrawText3D(x,y,z,text)
	local onScreen,_x,_y = World3dToScreen2d(x,y,z)
	SetTextFont(6)
	SetTextScale(0.40,0.40)
	SetTextColour(255,255,255,450)
	SetTextEntry("STRING")
	SetTextCentre(1)
	AddTextComponentString(text)
	DrawText(_x,_y)
	local factor = (string.len(text)) / 450
	DrawRect(_x,_y+0.025,0.10+factor,0.03,0,0,0,200)
end