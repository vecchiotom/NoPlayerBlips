minplayers = 0 --set to 0 or 1 to always enable

-- CODE


whitelisted = nil
RegisterNetEvent('checkwhitelist')
AddEventHandler('playerSpawned', function(spawn)
    TriggerServerEvent('white')
end)
AddEventHandler('checkwhitelist', function(whitelist) 
whitelisted = whitelist
 end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
         -- Wait 0 seconds to prevent crashing.
         if whitelisted == nil and NetworkGetNumConnectedPlayers() >= minplayers then
        for x=0,32 do
            local entityblip = GetBlipFromEntity(GetPlayerPed(x))
            if DoesBlipExist(entityblip) then
                SetBlipShowCone(blip, false)
                SetBlipDisplay(entityblip, 1)
            end
        end
    end
    end
end)

