ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)

    end
end)

RegisterCommand(zCore.Commands.tpm, function()
    if PlayerGroup == "superadmin" or PlayerGroup == "admin" or PlayerGroup == "mod" then
        local WaypointHandle = GetFirstBlipInfoId(8)
        if DoesBlipExist(WaypointHandle) then
            local waypointCoords = GetBlipInfoIdCoord(WaypointHandle)
            for height = 1, 1000 do
                SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
                local foundGround, zPos = GetGroundZFor_3dCoord(waypointCoords["x"], waypointCoords["y"], height + 0.0)
                if foundGround then
                    SetPedCoordsKeepVehicle(PlayerPedId(), waypointCoords["x"], waypointCoords["y"], height + 0.0)
                    break
                end
                Wait(0)
            end
            ESX.ShowNotification(zCore.Notification.OkMarker)
        else
            ESX.ShowNotification(zCore.Notification.NoMarker)
        end 
    else
        ESX.ShowNotification(zCore.Notification.NoPermission)
    end
end)
