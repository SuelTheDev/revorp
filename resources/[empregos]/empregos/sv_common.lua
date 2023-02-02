local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

ConfigEmprego = module(GetCurrentResourceName(), "cfg/cfg")

CreateThread(function ()
    vRP.prepare("emp/CreateTables", [[        
        CREATE TABLE IF NOT EXISTS `empregos` (
            `user_id` INT(11) NOT NULL,
            `rc` INT(11) NOT NULL DEFAULT '0',
            `level` INT(11) NOT NULL DEFAULT '1',
            `exp` INT(11) NOT NULL DEFAULT '0',
            `emp_name` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',            
            UNIQUE INDEX `user_id_emp_name` (`user_id`, `emp_name`) USING BTREE,
            CONSTRAINT `fk_empregos_users_user_id` FOREIGN KEY (`user_id`) REFERENCES `vrp_users` (`id`) ON UPDATE NO ACTION ON DELETE CASCADE
        )
        COLLATE='utf8mb4_general_ci'
        ENGINE=InnoDB
        ;
    ]])


    vRP.prepare("emp/info", "SELECT * FROM empregos WHERE user_id = @user_id AND emp_name = @emp_name")
    vRP.prepare("emp/insert", [[
        INSERT INTO empregos (user_id, rc, `level`, `exp`, emp_name)
        SELECT @user_id, @rc, @level, @exp, @emp_name
        WHERE NOT EXISTS (
            SELECT 1 FROM empregos
            WHERE user_id = @user_id AND emp_name = @emp_name
        )
    ]]) 
    vRP.prepare("emp/updateExp1", "UPDATE empregos SET exp = exp + @exp WHERE user_id = @user_id AND emp_name = @emp_name")
    vRP.prepare("emp/updateExp2", "UPDATE empregos SET level = level + @level, exp = @exp WHERE user_id = @user_id AND emp_name = @emp_name")
    vRP.prepare("emp/updateExp3", "UPDATE empregos SET rc = rc + @rc WHERE user_id = @user_id AND emp_name = @emp_name")
    vRP.execute("emp/CreateTables")
end)

Emprego = {}

function Emprego.create(user_id, name)
    vRP.execute("emp/insert", { user_id = user_id, emp_name = name, rc = 0, level = 1, exp = 0 })    
end

function Emprego.getEmpregoInfo(user_id, name)    
    local rows = vRP.query("emp/info", { user_id = user_id, emp_name = name})        
    return rows and rows[1] or {}
end

function Emprego.getTodos(user_id)
    local rows = vRP.query("emp/info", { user_id = user_id, emp_name = name})
    return rows or {}   
end

function Emprego.updateExp(user_id, exp, name)
    vRP.execute("emp/updateExp1", { user_id = user_id, emp_name = name, exp = exp })
end

function Emprego.updateLevel(user_id, level, exp, name)
    vRP.execute("emp/updateExp2", { user_id = user_id, emp_name = name, level = level, exp = exp })
end

function Emprego.updateRota(user_id, rota, name)
    vRP.execute("emp/updateExp3", { user_id = user_id, emp_name = name, rc = rota })
end

local users = {}

AddEventHandler("vRP:playerLeave",function(user_id)
    users[user_id] = nil
end)

function GetEXP(exp_ganho, user_id, emprego, source)
    local cfg = ConfigEmprego[emprego]
    local info = Emprego.getEmpregoInfo(user_id, emprego)
    if info.exp >= cfg.exp_por_level then
        Emprego.updateLevel(user_id, 1, 0, emprego)
        TriggerClientEvent("Notify", source, "importante",
            "Parabens você sibiu de level agora você e level <b>$" .. info.level .. "</b>.")
    else
        Emprego.updateExp(user_id, exp_ganho, emprego)
    end
end

function FazerPagamento(user_id, emprego, source)
    if user_id and emprego then
        if not users[user_id] then users[user_id] = {0,0} end
        if not (os.time() - users[user_id][1] > 5 * 60) then
            users[user_id][2] = users[user_id][2] + 1
            if users[user_id][2] >= 3 then
                DropPlayer(source, "[BANIDO] USO DE EVENTO DE PAGAMENTO DE SALÁRIO")
            end  
            return 0      
        end   

        local cfg = ConfigEmprego[emprego]
        local dinheiro_recebido = math.random(cfg.premios.Dinheiro_Minimo, cfg.premios.Dinheiro_Maximo)
        local exp = math.random(cfg.premios.ExP_Minimo, cfg.premios.ExP_Maximo)
        GetEXP(exp, user_id, emprego, source)       
        local info = Emprego.getEmpregoInfo(user_id, emprego)  
        local dinheiro = dinheiro_recebido * (info.level or 1)  
        vRP.giveMoney(user_id, parseInt(dinheiro))

        if cfg.items_recebido and type(cfg.items_recebido) == "table" and #cfg.items_recebido > 0 then
            for i = 1, #cfg.items_recebido do    
                local item = cfg.items_recebido[i]            
                if vRP.itemBodyList(item) then
                    if vRP.getInventoryWeight(user_id) + vRP.getItemWeight(item) <= vRP.getInventoryMaxWeight(user_id) then
                        vRP.giveInventoryItem(user_id, item, 1)
                        TriggerClientEvent("Notify", source, "sucesso", "Você recebeu <b> 1 x ".. vRP.itemNameList(item) .." </b>.")
                    end
                end
            end
        end

        TriggerClientEvent("Notify", source, "sucesso", "Você recebeu <b>$" .. vRP.format(parseInt(dinheiro)) .. "</b>.")

        return dinheiro
    end
end




--vRP.getInventoryWeight(user_id)+vRP.getItemWeight("linha")