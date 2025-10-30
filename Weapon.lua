RegisterCommand('repairweapon', function ()
    TriggerServerEvent('repairweapon')
end)

RegisterNetEvent('progressBarOrCircle', function ()
    if Config.ProgressCircle == true then
        FreezeEntityPosition(PlayerPedId(), true)
        lib.progressCircle({
            duration = 2000,
            position = 'bottom',
            useWhileDead = false,
            canCancel = true,
            disable = {
                car = true,
            },
            anim = {
                dict = 'mp_player_intdrink',
                clip = 'loop_bottle'
            },
            prop = {
                model = `prop_ld_flow_bottle`,
                pos = vec3(0.03, 0.03, 0.02),
                rot = vec3(0.0, 0.0, -1.5)
            },
        })
        FreezeEntityPosition(PlayerPedId(), false)
        elseif Config.ProgressCircle == false then
            lib.progressBar({
                duration = 2000,
                Label = "Repair Weapon...",
                useWhileDead = false,
                canCancel = true,
                disable = {
                    car = true,
                },
                anim = {
                    dict = 'mp_player_intdrink',
                    clip = 'loop_bottle'
                },
                prop = {
                    model = `prop_ld_flow_bottle`,
                    pos = vec3(0.03, 0.03, 0.02),
                    rot = vec3(0.0, 0.0, -1.5)
                },
            })
    end
end)