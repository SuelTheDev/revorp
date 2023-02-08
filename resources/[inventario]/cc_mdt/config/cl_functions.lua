Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPserver = Tunnel.getInterface("vRP")

--[ CONFIGURAÇÃO ]----------------------------------------------------------------------------------------------------------------

Config.isHandcuffed = vRP.isHandcuffed

Config.carregarObjeto = vRP.CarregarObjeto

Config.stopAnim = vRP.stopAnim

Config.deletarObjeto = vRP.DeletarObjeto