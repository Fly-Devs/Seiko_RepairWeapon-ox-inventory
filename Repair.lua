RegisterNetEvent('repairweapon', function ()
    local ox_inventory = exports.ox_inventory

    local weapon = ox_inventory:GetCurrentWeapon(source)
    if not weapon then
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
    ox_inventory:SetDurability(source, weapon.slot, 100)
end)