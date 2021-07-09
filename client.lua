CreateThread(function()
    while true do
        local PedIsArmedOpti = false
        for abc = 1, 6 do
            if IsPedArmed(PlayerPedId(), abc) then
                PedIsArmedOpti = true
                local currentWeaponHash = GetSelectedPedWeapon(PlayerPedId())
                if currentWeaponHash == GetHashKey("weapon_pistol") and IsPedWeaponReadyToShoot(PlayerPedId()) then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_combatpistol") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_appistol") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_pistol50") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_snspistol") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_heavypistol") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_microsmg") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_smg") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_smg_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_assaultsmg") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_combatpdw") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_machinepistol") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_minismg") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_pumpshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_pumpshotgun_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_sawnoffshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_assaultshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_bullpupshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_musket") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_heavyshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_dbshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_autoshotgun") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_combatshotgun") then
                    HideHudComponentThisFrame(14)
                    -- ASSAULT RIFLE
                elseif currentWeaponHash == GetHashKey("weapon_assaultrifle") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_assaultrifle_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_carbinerifle") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_carbinerifle_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_advancedrifle") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_specialcarbine") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_specialcarbine_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_bullpuprifle") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_bullpuprifle_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_compactrifle") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_militaryrifle") then
                    HideHudComponentThisFrame(14)
                -- Light Machine Guns
                elseif currentWeaponHash == GetHashKey("weapon_mg") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_combatmg") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_combatmg_mk2") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_gusenberg") then
                    HideHudComponentThisFrame(14)
                -- Throwables
                elseif currentWeaponHash == GetHashKey("weapon_grenade") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_bzgas") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_molotov") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_stickybomb") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_proxmine") then
                    HideHudComponentThisFrame(14)
                elseif currentWeaponHash == GetHashKey("weapon_smokegrenade") then
                    HideHudComponentThisFrame(14)
                else
                    PedIsArmedOpti = false
                end
            end
        end
        if PedIsArmedOpti then
            Wait(1.0)
        else
            Wait(700)
        end
    end
end)
