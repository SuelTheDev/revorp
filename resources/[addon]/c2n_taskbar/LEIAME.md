- Por favor manter os créditos -> BrennoC2N#2626
- Como usar?
- O script é standalone, a única conexão que precisa fazer com scripts externos será o uso de exports. Segue os exemplos:

```lua
    -- Client
    local taskResult = exports['c2n_taskbar']:getTaskBar("facil","C2N Taskbar")
    if taskResult then
        print("Sucesso")
    else
        print("Falhou")
    end

    -- Server
    local taskResult = exports['c2n_taskbar']:getTaskBar(source,"facil","C2N Taskbar")
    if taskResult then
        print("Sucesso")
    else
        print("Falhou")
    end
```