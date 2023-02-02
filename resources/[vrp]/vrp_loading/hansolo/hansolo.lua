AddEventHandler("playerSpawned", function ()
	ShutdownLoadingScreenNui()
end)

CreateThread(function()
	ShutdownLoadingScreen()
	ShutdownLoadingScreenNui()
	print("OK")
end)