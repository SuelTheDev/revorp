Citizen.CreateThread(function()
	while true do
		N_0xf4f2c0d4ee209e20()
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_UNARMED"),1.6)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNIFE"),0.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_DAGGER"),0.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHETE"),0.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BATTLEAXE"),0.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_STONE_HATCHET"),0.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_KNUCKLE"),0.2)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"),0.0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_RAYPISTOL"),0.0)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_PUMPSHOTGUN_MK2"),2.5)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_COMBATPISTOL"),1.3)
		N_0x4757f00bc6323cfe(GetHashKey("WEAPON_MACHINEPISTOL"),1.4)
		HideHudComponentThisFrame(1)
		HideHudComponentThisFrame(2)
		HideHudComponentThisFrame(3)
		HideHudComponentThisFrame(4)
		HideHudComponentThisFrame(5)
		HideHudComponentThisFrame(6)
		HideHudComponentThisFrame(7)
		HideHudComponentThisFrame(8)
		HideHudComponentThisFrame(9)
		HideHudComponentThisFrame(11)
		HideHudComponentThisFrame(12)
		HideHudComponentThisFrame(13)
		HideHudComponentThisFrame(15)
		HideHudComponentThisFrame(17)
		HideHudComponentThisFrame(18)
		HideHudComponentThisFrame(20)
		HideHudComponentThisFrame(21)
		HideHudComponentThisFrame(22)
		HideHudComponentThisFrame(23)
		HideHudComponentThisFrame(24)
		HideHudComponentThisFrame(25)
		HideHudComponentThisFrame(26)
		HideHudComponentThisFrame(27)
		HideHudComponentThisFrame(28)
		HideHudComponentThisFrame(29)
		HideHudComponentThisFrame(30)
		HideHudComponentThisFrame(31)
		HideHudComponentThisFrame(32)
		HideHudComponentThisFrame(33)
		HideHudComponentThisFrame(34)
		HideHudComponentThisFrame(35)
		HideHudComponentThisFrame(36)
		HideHudComponentThisFrame(37)
		HideHudComponentThisFrame(38)
		HideHudComponentThisFrame(39)
		HideHudComponentThisFrame(40)
		HideHudComponentThisFrame(41)
		HideHudComponentThisFrame(42)
		HideHudComponentThisFrame(43)
		HideHudComponentThisFrame(44)
		HideHudComponentThisFrame(45)
		HideHudComponentThisFrame(46)
		HideHudComponentThisFrame(47)
		HideHudComponentThisFrame(48)
		HideHudComponentThisFrame(49)
		HideHudComponentThisFrame(50)
		HideHudComponentThisFrame(51)
		RemoveAllPickupsOfType(0x6C5B941A)
		RemoveAllPickupsOfType(0xF33C83B0)
		RemoveAllPickupsOfType(0xDF711959)
		RemoveAllPickupsOfType(0xB2B5325E)
		RemoveAllPickupsOfType(0x85CAA9B1)
		RemoveAllPickupsOfType(0xB2930A14)
		RemoveAllPickupsOfType(0xFE2A352C)
		RemoveAllPickupsOfType(0x693583AD)
		RemoveAllPickupsOfType(0x1D9588D3)
		RemoveAllPickupsOfType(0x3A4C2AD2)
		RemoveAllPickupsOfType(0x4D36C349)
		RemoveAllPickupsOfType(0x2F36B434)
		RemoveAllPickupsOfType(0xA9355DCD)
		RemoveAllPickupsOfType(0x96B412A3)
		RemoveAllPickupsOfType(0x9299C95B)
		RemoveAllPickupsOfType(0xF9AFB48F)
		RemoveAllPickupsOfType(0x8967B4F3)
		RemoveAllPickupsOfType(0x3B662889)
		RemoveAllPickupsOfType(0xFD16169E)
		RemoveAllPickupsOfType(0xCB13D282)
		RemoveAllPickupsOfType(0xC69DE3FF)
		RemoveAllPickupsOfType(0x278D8734)
		RemoveAllPickupsOfType(0x5EA16D74)
		RemoveAllPickupsOfType(0x295691A9)
		RemoveAllPickupsOfType(0x81EE601E)
		RemoveAllPickupsOfType(0x88EAACA7)
		RemoveAllPickupsOfType(0x872DC888)
		RemoveAllPickupsOfType(0xC5B72713)
		RemoveAllPickupsOfType(0x9CF13918)
		RemoveAllPickupsOfType(0x0968339D)
		RemoveAllPickupsOfType(0xBFEE6C3B)
		RemoveAllPickupsOfType(0xBED46EC5)
		RemoveAllPickupsOfType(0x079284A9)
		RemoveAllPickupsOfType(0x8ADDEC75)
		DisablePlayerVehicleRewards(PlayerId())
		SetPedInfiniteAmmo(PlayerPedId(),true,GetHashKey("WEAPON_FIREEXTINGUISHER"))
		SetCreateRandomCops(false)
		SetGarbageTrucks(false)
		SetRandomBoats(false)

		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId()))
		RemoveVehiclesFromGeneratorsInArea(x-9999.0,y-9999.0,z-9999.0,x+9999.0,y+9999.0,z+9999.0)

		Citizen.Wait(5)
	end
end)