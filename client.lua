
CreateThread(function()
    local t

    while (function()
        t =500
        local playerPed =PlayerPedId()

		if not IsPlayerFreeAiming(PlayerId()) then
			return true
		end

        for weapon = 1, 6 do
			print(weapon)
            if IsPedArmed(playerPed, weapon) then
                local currentWeaponHash = GetSelectedPedWeapon(playerPed)

                if currentWeaponHash == GetHashKey("WEAPON_HEAVYSNIPER") or currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
                    return true
                end
                
                t =1

                HideHudComponentThisFrame(14)

                return true
            end
        end

		return true
    end)() do
        Wait(t)
    end
end)