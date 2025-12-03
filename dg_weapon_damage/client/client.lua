CreateThread(function()
    while true do
        local playerPed = PlayerPedId()

        if IsPedArmed(playerPed, 1 + 16) then  -- melee + throwable check
            local _, weaponHash = GetCurrentPedWeapon(playerPed)

            if Config.WeaponDamage[weaponHash] ~= nil then
                local multiplier = Config.WeaponDamage[weaponHash]

                SetWeaponDamageModifier(weaponHash, multiplier)
            end
        end

        Wait(500) -- low CPU usage
    end
end)
