local ExcludeWeapons = {
    "sniperrifle",
    "heavysniper",
    "heavysniper_mk2",
    "marksmanrifle",
    "marksmanrifle_mk2",
}

CreateThread(function()
    local TimeToUpdate
    while (function()
        TimeToUpdate = 250				
        if not IsPlayerFreeAiming(PlayerId()) then
            return true
        end
        for _, weapon in ipairs(ExcludeWeapons) do
            if GetSelectedPedWeapon(PlayerPedId()) == GetHashKey(("WEAPON_%s"):format(string.upper(weapon))) then
                return true
            end
        end
        TimeToUpdate = 1.0
        HideHudComponentThisFrame(14)	
	return true
    end)() do
        Wait(TimeToUpdate)
    end
end)
