-----------------------------------------------------------------------------------------------------------------------------------------
------------ DESENVOLVIDO POR CARIOCA COMMUNITY -- DISCORD: discord.gg/78sERGaWQm -- SCRIPT GRATUITO -- FAVOR NÃO REVENDER! -------------
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterNetEvent("Notify")
AddEventHandler("Notify",function(css,mensagem,time)
	if not time then
		time = 7000
	end
	SendNUIMessage({ css = css, mensagem = mensagem, time = time })
end)


RegisterNetEvent("NotifyAdm")
AddEventHandler("NotifyAdm",function(nomeadm,mensagem)
	SendNUIMessage({ css = "comunicado", mensagem = "<b>"..mensagem.."</b><br>- Administrador :<b> "..nomeadm.."</b>", time = 30000 })
end)
