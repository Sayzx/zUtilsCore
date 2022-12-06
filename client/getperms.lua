ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
            ESX.TriggerServerCallback("zCore:server:getGroup", function(group) 
                PlayerGroup = group
                if zCore.Assets.NoPolice == false then
                    print(zCore.Prefix.Prefix.." PNJ Police ^1 Désactivé")
                else 
                    print(zCore.Prefix.Prefix.." PNJ Police ^2 Activé")
                end
                if zCore.Assets.Roulades == false then
                    print(zCore.Prefix.Prefix.." Roulades ^1 Désactivé")
                else 
                    print(zCore.Prefix.Prefix.." Roulades ^2 Activé")
                end
                if zCore.Assets.CoupWeapon == false then
                    print(zCore.Prefix.Prefix.." Coup de Weapon ^1 Désactivé")
                else 
                    print(zCore.Prefix.Prefix.." Coup de Weapon ^2 Activé")
                end
                if zCore.Assets.NoReticle == false then
                    print(zCore.Prefix.Prefix.." Reticle ^1 Désactivé")
                else 
                    print(zCore.Prefix.Prefix.." Reticle ^2 Activé")
                end
                if zCore.Assets.NoBunnyHop == false then
                    print(zCore.Prefix.Prefix.." BunnyHop ^1 Désactivé")
                else 
                    print(zCore.Prefix.Prefix.." BunnyHop ^2 Activé")
                end
                if zCore.Assets.NoDriveBy == false then
                    print(zCore.Prefix.Prefix.." DriveBy ^1 Désactivé")
                else 
                    print(zCore.Prefix.Prefix.." DriveBy ^2 Activé")
                end
                print(zCore.Prefix.Prefix.." "..zCore.Prefix.InitializeGroup.." Your group is: ^1" .. group)
            end)
    end
end)