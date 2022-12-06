function SetData()
    players = {}
    for _, player in ipairs(GetActivePlayers()) do
        local ped = GetPlayerPed(player)
        table.insert( players, player )
end

    
    local name = GetPlayerName(PlayerId())
    local id = GetPlayerServerId(PlayerId())
    Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), 'FE_THDR_GTAO', "~p~zCore • ~b~https://dsc.gg/zdev ~s~ID: ~r~"..id.." ~s~• ~p~".. #players .." connecté(e)s") -- Mettre le nom de votre serveur et votre invite Discord
end


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(100)
        SetData()
        AddTextEntry('PM_SCR_MAP', '~b~Carte de Los Santos')
        AddTextEntry('PM_SCR_GAM', '~r~Prendre l\'avion')
        AddTextEntry('PM_SCR_INF', '~g~Logs')
        AddTextEntry('PM_SCR_SET', '~p~Configuration')
        AddTextEntry('PM_SCR_STA', '~b~Statistiques')
        AddTextEntry('PM_SCR_GAL', '~y~Galerie')
        AddTextEntry('PM_SCR_RPL', '~y~Éditeur ∑')
        AddTextEntry('PM_PANE_CFX', '~g~zCore') -- MEttre le nom de votre serveur
        AddTextEntry('PM_PANE_LEAVE', '~p~Se déconnecter'); -- Mettre le nom de votre serveur
        AddTextEntry('PM_PANE_QUIT', '~r~Quitter FiveM');
        Citizen.Wait(5000)
    end
end)