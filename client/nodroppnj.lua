ESX = nil

function SetWeaponDrops()
    print(zCore.Prefix.Prefix.." "..zCore.Prefix.InitializeNoDropPnj)
    local handle, ped = FindFirstPed()
    local finished = false

    repeat
        if not IsEntityDead(ped) then
            SetPedDropsWeaponsWhenDead(ped, false)
        end
        finished, ped = FindNextPed(handle)
    until not finished

    EndFindPed(handle)
end

Citizen.CreateThread(function()
    print(zCore.Prefix.Prefix.." "..zCore.Prefix.InitializeNoDropPnj.." Initialized")
    while ESX == nil do
        
        print(zCore.Prefix.Prefix.." "..zCore.Prefix.InitializeNoDropPnj)
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        
        SetWeaponDrops()
        Citizen.Wait(500)
        
    end
end)

Citizen.CreateThread(function()
    if zCore.Assets.Roulades == false then
        while true do
            Citizen.Wait(5)
            if IsControlPressed(0, 25)
                then DisableControlAction(0, 22, true)
            end
        end
    else 
        return
    end
    if zCore.Config.Assets.CoupWeapon == false then

        while true do
            Citizen.Wait(0)
        local ped = PlayerPedId()
            if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
                DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
            end
        end
    else 
        return 
    end
end)




Citizen.CreateThread(function()
    if zCore.Assets.NoPolice == false then

        while true do
            Citizen.Wait(375)
            local myCoords = GetEntityCoords(GetPlayerPed(-1))
            ClearAreaOfCops(myCoords.x, myCoords.y, myCoords.z, 100.0, 0)
        end

        for i = 1, 12 do
            Citizen.InvokeNative(0xDC0F817884CDD856, i, false)
        end

        while true do
            Citizen.Wait(300)
        
            if GetPlayerWantedLevel(PlayerId()) ~= 0 then
                SetPlayerWantedLevel(PlayerId(), 0, false)
                SetPlayerWantedLevelNow(PlayerId(), false)
            end
        end
    else 
        return
    end

end)

-- No Reticle 

Citizen.CreateThread(function()
    if zCore.Assets.NoReticle == false then
        local isSniper = false
        while true do
            Citizen.Wait(0)

            local ped = GetPlayerPed(-1)
            local currentWeaponHash = GetSelectedPedWeapon(ped)

            if currentWeaponHash == 100416529 then
                isSniper = true
            elseif currentWeaponHash == 205991906 then
                isSniper = true
            elseif currentWeaponHash == -952879014 then
                isSniper = true
            elseif currentWeaponHash == GetHashKey('WEAPON_HEAVYSNIPER_MK2') then
                isSniper = true
            else
                isSniper = false
            end

            if not isSniper then
                HideHudComponentThisFrame(14)
            end
        end
    else 
end
end)
