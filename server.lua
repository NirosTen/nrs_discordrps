local numberPlayers = {}

AddEventHandler("playerConnecting", function()
    local src = source
    numberPlayers[src] = true
end)

AddEventHandler("playerDropped", function()
    local src = source
    numberPlayers[src] = nil
end)

Citizen.CreateThread(function()
    while true do
        Wait(60*1000)
        local number = 0

        for k,v in pairs(numberPlayers) do
            if v then
                number = number +1
            end
        end
        TriggerClientEvent('nrs_precense:Update', -1, number)
    end
end)