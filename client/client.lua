-- ███▄    █  ▒█████   ██▒   █▓ ▄▄▄              ██████  ▄████▄   ██▀███   ██▓ ██▓███  ▄▄▄█████▓  ██████
-- ██ ▀█   █ ▒██▒  ██▒▓██░   █▒▒████▄          ▒██    ▒ ▒██▀ ▀█  ▓██ ▒ ██▒▓██▒▓██░  ██▒▓  ██▒ ▓▒▒██    ▒
-- ▓██  ▀█ ██▒▒██░  ██▒ ▓██  █▒░▒██  ▀█▄        ░ ▓██▄   ▒▓█    ▄ ▓██ ░▄█ ▒▒██▒▓██░ ██▓▒▒ ▓██░ ▒░░ ▓██▄
-- ▓██▒  ▐▌██▒▒██   ██░  ▒██ █░░░██▄▄▄▄██         ▒   ██▒▒▓▓▄ ▄██▒▒██▀▀█▄  ░██░▒██▄█▓▒ ▒░ ▓██▓ ░   ▒   ██▒
-- ▒██░   ▓██░░ ████▓▒░   ▒▀█░   ▓█   ▓██▒      ▒██████▒▒▒ ▓███▀ ░░██▓ ▒██▒░██░▒██▒ ░  ░  ▒██▒ ░ ▒██████▒▒
-- ░ ▒░   ▒ ▒ ░ ▒░▒░▒░    ░ ▐░   ▒▒   ▓▒█░      ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░░ ▒▓ ░▒▓░░▓  ▒▓▒░ ░  ░  ▒ ░░   ▒ ▒▓▒ ▒ ░
-- ░ ░░   ░ ▒░  ░ ▒ ▒░    ░ ░░    ▒   ▒▒ ░      ░ ░▒  ░ ░  ░  ▒     ░▒ ░ ▒░ ▒ ░░▒ ░         ░    ░ ░▒  ░ ░
--   ░   ░ ░ ░ ░ ░ ▒       ░░    ░   ▒         ░  ░  ░  ░          ░░   ░  ▒ ░░░         ░      ░  ░  ░
--         ░     ░ ░        ░        ░  ░            ░  ░ ░         ░      ░                          ░
--                         ░                            ░

-- 𝗧𝗵𝗮𝗻𝗸 𝘆𝗼𝘂 𝗳𝗼𝗿 𝗶𝗻𝘀𝘁𝗮𝗹𝗹𝗶𝗻𝗴 𝗼𝘂𝗿 𝗮𝗻𝘁𝗶-𝘃𝗱𝗺 𝘀𝘆𝘀𝘁𝗲𝗺

-- 𝗳𝗼𝗿 𝗮𝗻𝘆 𝗽𝗿𝗼𝗯𝗹𝗲𝗺 𝗼𝗿 𝗶𝗻𝗳𝗼𝗿𝗺𝗮𝘁𝗶𝗼𝗻 𝗱𝗼 𝗻𝗼𝘁 𝗵𝗲𝘀𝗶𝘁𝗮𝘁𝗲 𝘁𝗼 𝗲𝗻𝘁𝗲𝗿 𝗼𝘂𝗿 https://discord.gg/HNhCsR9cHU

-- 𝗺𝗮𝗻𝘆 𝗻𝗲𝘄 𝘁𝗵𝗶𝗻𝗴𝘀 𝘄𝗶𝗹𝗹 𝗮𝗿𝗿𝗶𝘃𝗲 𝗶𝗻 𝗼𝘂𝗿 𝗱𝗶𝘀𝗰𝗼𝗿𝗱, 𝘀𝘂𝗰𝗵 𝗮𝘀 𝗺𝗮𝗻𝘆 𝗳𝗿𝗲𝗲 𝗱𝗿𝗼𝗽𝘀 𝗮𝗻𝗱 𝗺𝘂𝗰𝗵 𝗺𝗼𝗿𝗲

-- ali545 (754332358848807012)
-- locomedy. (975023885676326983)

local adding = false
local previousHealth = 100

CreateThread(function()
    while true do
        local playerPed = PlayerPedId()
        previousHealth = GetEntityHealth(playerPed)
        Wait(10 * 1000)
    end
end)

AddEventHandler("entityDamaged", function(entity, attacker, weapon, damage)
    if IsEntityAPed(entity) and entity == PlayerPedId() then
        local targetPed = entity
        local attackerPed = attacker

        if weapon == 0 or weapon == -1553120962 then
            if IsPedInAnyVehicle(attackerPed, false) and GetPedInVehicleSeat(attackerPed, -1) then
                if not adding then
                    adding = true
                    local attackerServerId = GetPlayerServerId(NetworkGetPlayerIndexFromPed(attackerPed))
                    SetEntityInvincible(targetPed, true)

                    TriggerServerEvent("nova_antivdm:warn", "CODICEANTITRIGGERANTIVDM121683GDSAàòèPLàDS",
                        attackerServerId)
                    SetTimeout(1500, function()
                        adding = false
                    end)

                    if Config.CurarePlayer then
                        local currHealth = GetEntityHealth(targetPed)
                        print("curato", currHealth, IsEntityDead(targetPed))
                        if currHealth <= 0 or IsEntityDead(targetPed) then
                            if GetResourceState('qb-core'):find('start') then -- qb needs a wait becuase ...
                                Wait(7500)
                            end
                            SetEntityHealth(targetPed, 0)
                            Config.revivePlayer(GetPlayerServerId(NetworkGetPlayerIndexFromPed(targetPed)))
                            Config.sendNotification(Config.Lang["title"], Config.Lang["ress"])
                        end

                        while HasEntityCollidedWithAnything(targetPed) do
                            SetEntityHealth(targetPed, previousHealth < 10 and 200 or previousHealth)
                            Wait(1)
                        end

                        SetEntityHealth(targetPed, previousHealth < 10 and 200 or previousHealth)
                    end
                    Wait(2000)
                    SetEntityInvincible(targetPed, false)
                end
            end
        end
    end
end)

---@param target securityCode
---@param num webhook
RegisterNetEvent("nova_antivdm:warn", function(target, num)
    if target ~= "CODICEANTITRIGGERANTIVDM121683GDSAàòèPLàDS" then
        TriggerServerEvent("nova_antivdm:banPlayer", "event")
        return
    end
    local playerPed = PlayerPedId()

    if IsPedInAnyVehicle(playerPed, false) then
        if Config.UseNotificationSound then
            PlaySoundFrontend(-1, Config.NotificationSound[1], Config.NotificationSound[2], 1)
        end

        SetTimeout(200, function()
            exports['screenshot-basic']:requestScreenshotUpload(num, 'files[]', function(data)
                local resp = json.decode(data)
                if resp.attachments then
                end
            end)
        end)

        SetTimeout(Config.VdmRemover * 60000, function()
            if LocalPlayer.state.vdmCounter > 0 then
                LocalPlayer.state:set("vdmCounter", (LocalPlayer.state.vdmCounter - 1), true)
            end
        end)

        LocalPlayer.state:set("vdmCounter", ((LocalPlayer.state.vdmCounter or 0) + 1), true)
        Config.sendNotification(Config.Lang["title"], ("%s %s"):format(LocalPlayer.state.vdmCounter, Config.Lang["desc"]))
    end
end)

-- RegisterCommand("resetVdm", function()
--     print("fatto")
--     LocalPlayer.state.vdmCounter = 0
-- end)
-- RegisterCommand("vdmcounter", function()
--     print(LocalPlayer.state.vdmCounter)
-- end)


AddStateBagChangeHandler('vdmCounter', nil, function(bagName, key, value)
    local isStatePlayer = bagName:gsub('player:', '')
    if not value then return end

    if isStatePlayer then
        if key == "vdmCounter" then -- double check
            if value >= Config.VdmChance then
                TriggerServerEvent("nova_antivdm:banPlayer")
            end
        end
    end
end)

