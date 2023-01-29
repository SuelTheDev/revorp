-----------------------------------------------------------------------------------------------------------------------------------------
--Created By Noobi#1994----------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------

Config = {} -- Não Altere

Config.aviso = "Este script é gratuido, não compre e nem venda ele, vamos tentar mudar um pouco a comunidade e ser mais unidos e honestos" -- Não Altere

-----------------------------------------------------------------------------------------------------------------------------------------
--WEBHOOK
-----------------------------------------------------------------------------------------------------------------------------------------

Config.comwebhook = true --Caso não queira webhook, colocar false
Config.webhook = "https://discord.com/api/webhooks/1064242144249905202/Gel1mSyaSL_wOsHfRCQQC3fCAaCHh_1v5X2LQh0YPf_oK3fv-M5q5sU3xDgvsLQ_3FQv" -- Webhook Discord para enviar log de VIP`s enviados.

-----------------------------------------------------------------------------------------------------------------------------------------
--SETUP
-----------------------------------------------------------------------------------------------------------------------------------------
Config.permissaoadmin = "dono.permissao" --Nome da permissão admin para usar o comando de teste
Config.carroinicial = true --Habilita doação de carro para iniciantes (Para desligar, colocar false)
Config.carrosiniciais = {"cb500x"} --(Quantidade ilimitada)
Config.nomedovip = "Iniciante" --Nome do group do seu plano VIP
Config.permissaodovip = "vipiniciante.permissao" --Nome da permissão do seu plano VIP
Config.tempodovip = 15 --Colocar números inteiros em dias
Config.removervip = true --Utilizar nosso sistema para remover o VIP inicial após expirar. Útil para frameworks que não possuem nativamente essa função
Config.iteminicial = true--Habilita doação de itens para iniciantes (Para desligar, colocar false)
Config.itensiniciais = { --sempre colocar o nome do item cadastrado em sua base e depois "=" e a quantidade na frente.(Quantidade ilimitada)
    mochila = 3,
    celular = 1,
    roupas = 1,
}
Config.dinheiroadicional = true --Habilita doação de dinheiro adicional para iniciantes (Para desligar, colocar false)
Config.dinheiroadicionalqtd = 100000 --Colocar números inteiros
Config.direitoacasa = true --Habilita doação de casa para iniciantes (Para desligar, colocar false) SÓ FUNCIONA CASO SEU SCRIPT CEDA A CASA ATRAVÉS DE UM CARGO TEMPORÁRIO.
Config.casabeneficio = "" --Nome do cargo que da direito a casa.
Config.mostrarNUI = true --Habilita para player receber mensagem do VIP inicial (Para desligar, colocar false)
Config.delayNUI = 15000 --Colocar números inteiros e em milissegundos, esse tempo define quanto tempo aNUI vai demorar para aparecer para o player.


-----------------------------------------------------------------------------------------------------------------------------------------
--COMANDO
-----------------------------------------------------------------------------------------------------------------------------------------

--Para adicionar um VIP temporario manualmente, basta digitar /viptemp <id> SE A PESSOA JÁ TEVE UM VIP TEMP NA SUA CIDADE, O COMANDO NÃO FUNCIONARÁ
