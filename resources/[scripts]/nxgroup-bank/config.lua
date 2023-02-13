config = {}

config.webhookRoubo = ""
config.nomeBanco = "Nexus Bank"
config.imgBanco = "https://cdn.discordapp.com/attachments/557708055308009482/908052407525703731/LOGO_Nexus_RP_2000x2000_Transparente_-_by_Design_Ideal.png"

config.antiFlood = { status = true, ban = false, webhook = "https://discord.com/api/webhooks/997079380901769286/wX0ab4bzC3-FTLAunRq9sGqNF0u3cioXOWqMIaGdpiFCtHml7-y837XjvbCz3l_74iWU" }
config.roubos = { reMin = 5000, reMax = 10000, restore = 240, itemName = "dinheiro-sujer", policiaMinima = 0}
config.bancoBlips = { showBlip = true, bMapType = 207, bColor = 4, bText = "Banco", bScale = 0.5 }
config.atmBlips = { showBlip = false, bMapType = 207, bColor = 4, bText = "ATM", bScale = 0.2 }

config.bancos = {
	{x=148.55, y=-1040.32, z=29.38, blipOnMap = true},
	{x=149.87, y=-1040.82, z=29.38, blipOnMap = false},
	{x=2683.07, y=3286.6, z=55.25, blipOnMap = false},
	{x=1968.12, y=3743.58, z=32.38, blipOnMap = false},
	{x=2558.19, y=389.4, z=108.63, blipOnMap = false},
	-- {x=-3040.79, y=-593.13, z=7.91, blipOnMap = false},
	{x=-3240.65, y=1008.82, z=12.84, blipOnMap = false},
	{x=-1827.24, y=784.87, z=138.38, blipOnMap = false},
	{x=540.47, y=2670.97, z=42.16, blipOnMap = false},
	{x=1735.23, y=6410.63, z=35.04, blipOnMap = false},
	{x=236.75, y=218.1, z=106.29, blipOnMap = false},
	{x=-427.93, y=-427.93, z=94.59, blipOnMap = false},
	{x=-1212.980, y=-330.841, z=37.787, blipOnMap = false},
	{x=-2962.582, y=482.627, z=15.703, blipOnMap = false},
	{x=-112.202, y=6469.295, z=31.626, blipOnMap = true},
	{x=314.187, y=-278.621, z=54.170, blipOnMap = true},
	{x=-351.534, y=-49.529, z=49.042, blipOnMap = true},
	{x=241.54, y=225.37, z=106.29, blipOnMap = true},
	{x=1175.064, y=2706.643, z=38.094, blipOnMap = true},
	{x=-2294.83,y=356.38,z=174.6, blipOnMap = false},
	{x=-2293.84,y=354.2,z=174.56, blipOnMap = false},
}

config.atms = {
	{x=-254.33, y=-692.38, z=33.61, h=158.75, assaltavel=true, segundos=60, blipOnMap = false}, -- Est.Vermelho
	{x=-2072.63, y=-317.22, z=13.32, h=266.46, assaltavel=true, segundos=60, blipOnMap = false}, -- Pst Praia.
	{x=285.49, y=143.41, z=104.18, h=161.58, assaltavel=true, segundos=60, blipOnMap = false}, -- Prox ao BC.
	{x=1138.24, y=-468.95, z=66.74, h=73.71, assaltavel=true, segundos=60, blipOnMap = false}, -- Prox Barragem.
	{x=119.06, y=-883.69, z=31.13, h=70.87, assaltavel=true, segundos=60, blipOnMap = false}, -- Praça
	{x=-712.94, y=-819.0, z=23.73, h=0.0, assaltavel=true, segundos=60, blipOnMap = false}, -- Prox ao Vermelho
	{x=-821.63, y=-1081.92, z=11.14, h=31.19, assaltavel=true, segundos=60, blipOnMap = false}, -- Prox ao HP
	{x=-282.98, y=6226.09, z=31.5, h=320.32, assaltavel=true, segundos=60, blipOnMap = false}, -- Norte
	{x=-1315.75, y=-834.72, z=16.97, h=308.98, assaltavel=true, segundos=60, blipOnMap = false}, -- Prox a Praia
	{x=288.81, y=-1282.31, z=29.64, h=269.3, assaltavel=true, segundos=60, blipOnMap = false}, -- POSTO
	{x=147.56, y=-1035.74, z=29.35, h=164.41, assaltavel=false, segundos=60, blipOnMap = false}, --Frente PRAÇA
	{x=145.97, y=-1035.08, z=29.35, h=158.75, assaltavel=false, segundos=60, blipOnMap = false}, --Frente PRAÇA2
	{x=-526.56, y=-1222.98, z=18.46, h=153.08, assaltavel=false, segundos=60, blipOnMap = false},
	{x=288.98, y=-1256.85, z=29.45, h=272.13, assaltavel=false, segundos=60, blipOnMap = false},
	{x=33.27, y=-1348.24, z=29.5, h=175.75, assaltavel=false, segundos=60, blipOnMap = false},
	{x=-56.91, y=-1752.17, z=29.43, h=51.03, assaltavel=false, segundos=60, blipOnMap = false},
	{x=-717.58, y=-915.66, z=19.22, h=90.71, assaltavel=false, segundos=60, blipOnMap = false},
	{x=380.76, y=323.41, z=103.57, h=161.58, assaltavel=false, segundos=60, blipOnMap = false},
	{x=1153.65, y=-326.74, z=69.21, h=107.72, assaltavel=false, segundos=60, blipOnMap = false},
	{x=89.65, y=2.5, z=68.31, h=334.49, assaltavel=false, segundos=60, blipOnMap = false},
	{x=1703.03, y=4933.56, z=42.07, h=334.49, assaltavel=false, segundos=60, blipOnMap = false},
	{x=1686.84, y=4815.8, z=42.01, h=334.49, assaltavel=false, segundos=60, blipOnMap = false},
	{x=-909.73, y=-2024.12, z=9.41, h=334.49, assaltavel=false, segundos=60, blipOnMap = false},
	{x=-672.02, y=331.76, z=83.09, h=186.35, assaltavel=false, segundos=60, blipOnMap = false},
	{x=-3040.88, y=593.01, z=7.91, h=250.95, assaltavel=false, segundos=60, blipOnMap = false},
	{x=1152.53, y=-1535.02, z=35.39, h=250.95, assaltavel=false, segundos=60, blipOnMap = false},

}

return config