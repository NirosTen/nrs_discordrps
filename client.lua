-- 
-- @author NirosTen
-- @version 1.0
-- 

Citizen.CreateThread(function()
    --This is the Application ID (Replace this with you own)
	SetDiscordAppId(767995422919884810)
    --Here you will have to put the image name for the "large" icon.
	SetDiscordRichPresenceAsset('logo_large')
    --(11-11-2018) New Natives:
    --Here you can add hover text for the "large" icon.
    SetDiscordRichPresenceAssetText('This is the text for the large icon')
    --Here you will have to put the image name for the "small" icon.
    SetDiscordRichPresenceAsset('logo_small')
    --Here you can add hover text for the "small" icon.
    SetDiscordRichPresenceAssetText('This is the text for the small icon')
    Citizen.Wait(1)
end)

RegisterNetEvent("nrs_precense:Update")
AddEventHandler("nrs_precense:Update", function(newPlayers)
    SetRichPresence(GetPlayerName(PlayerId()) .. " - ".. newPlayers .. " online player(s) ")
end)

