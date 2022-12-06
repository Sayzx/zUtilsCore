ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
        ESX.TriggerServerCallback("zCore:server:getGroup", function(group) 
            PlayerGroup = group
            print("Your group is: " .. group)
        end)
    end
end)
