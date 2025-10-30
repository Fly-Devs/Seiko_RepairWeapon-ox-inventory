RegisterNetEvent('repairweapon', function ()
    local ox_inventory = exports.ox_inventory

    -- Vérifier si le joueur a une arme équipée
    local weapon = ox_inventory:GetCurrentWeapon(source)
    if not weapon then
        -- Si le joueur n'a pas d'arme, envoyer une notification
        TriggerClientEvent('ox_lib:notify', source, {
            id = 'repair',
            title = 'Notification Entreprise ',
            description = 'vous ne possedez aucune arme en main',
            position = 'center-left',
            icon = 'ban',
        })
        return
    end

    TriggerClientEvent('progressBarOrCircle')

    -- Réparer l'arme
    ox_inventory:SetDurability(source, weapon.slot, 100)
end)