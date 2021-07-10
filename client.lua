local ExcludeWeapons ={ "HEAVYSNIPER", "MARKSMANRIFLE" }

CreateThread(function()
    local t

    while (function()
        t =500
        local playerPed =PlayerPedId()
				
        if not IsPlayerFreeAiming(PlayerId()) then
        	return true
        end
		
	local currentWeaponHash = GetSelectedPedWeapon(playerPed)

	for _, weapon in ipairs(ExcludeWeapons) do
		if currentWeaponHash == GetHashKey(("WEAPON_%s"):format(weapon)) then
			return true
		end
	end

	t =1

	HideHudComponentThisFrame(14)
				
	return true
    end)() do
        Wait(t)
    end
end)
