 local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

src = {}
Tunnel.bindInterface("empGraos",src)
vCLIENT = Tunnel.getInterface("empGraos")

vRP.prepare("warn/InfosEmpregoGraos", "SELECT * FROM empregos_graos WHERE user_id = @user_id")
vRP.prepare("warn/InsertEmpregoGraos", "INSERT INTO empregos_graos(user_id, rc, level, exp) VALUES(@user_id, @rc, @level, @exp)") 
vRP.prepare("warn/UpdateEXPGraos", "UPDATE empregos_graos SET exp = exp + @exp WHERE user_id = @user_id") 
vRP.prepare("warn/UpdateEXP2Graos", "UPDATE empregos_graos SET level = level + @level, exp = @exp WHERE user_id = @user_id") 
vRP.prepare("warn/UpdateEXP3Graos", "UPDATE empregos_graos SET rc = rc + @rc WHERE user_id = @user_id") 


AddEventHandler("vRP:playerSpawn", function(user_id, source, first_spawn)
    local source = source
    local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if user_id then
		
        	local infos = vRP.query("warn/InfosEmpregoGraos", {
            	user_id = parseInt(user_id)
        	})

        	if infos[1] == nil then

            vRP.query("warn/InsertEmpregoGraos", {
                user_id = parseInt(user_id),
                rc = 0,
				level = 1,
				exp = 0,
            })

        end
    end
end)

src.CheckLevel = function()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		local player = vRP.query("warn/InfosEmpregoGraos", {user_id = user_id})
		return player[1].rc,player[1].level,player[1].exp
	end
end

src.return_dinheiro = function()
	local source = source
	local user_id = vRP.getUserId(source)
    if user_id then
        local dinheiro_jogador = vRP.getMoney(user_id)
        return dinheiro_jogador
    end
end

src.checkItem = function()
	local source = source
	local user_id = vRP.getUserId(source)
    if user_id then
        return true
    end
end

src.pagar = function(dinheiro_recebido)
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local player = vRP.query("warn/InfosEmpregoGraos", {user_id = user_id})
        local dinheiro = dinheiro_recebido*player[1].level
	    vRP.giveMoney(user_id,parseInt(dinheiro))
		TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>$"..vRP.format(parseInt(dinheiro)).." dólares</b>.")
        return dinheiro
	end
end

src.addRota = function()
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local player = vRP.query("warn/InfosEmpregoGraos", {user_id = user_id})

        vRP.query("warn/UpdateEXP3Graos", {
            user_id = user_id,
            rc = 1,
        })

	end
end



src.GetEXP = function(exp_ganho)
    local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
        local player = vRP.query("warn/InfosEmpregoGraos", {user_id = user_id})

        if player[1].exp >= exp_por_level then
            vRP.query("warn/UpdateEXP2Graos", {
                user_id = user_id,
                level = 1,
                exp = 0,
            })
            TriggerClientEvent("Notify",source,"importante","Parabens voce upou de level agora voce e level <b>$"..player[1].level.."</b>.")
        else
            vRP.query("warn/UpdateEXPGraos", {
                user_id = user_id,
                exp = exp_ganho,
            })
        end
	end
end
