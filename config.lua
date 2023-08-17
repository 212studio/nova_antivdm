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


Config = {}

Config.CurarePlayer = true -- se curare il player quando viene danneggiato da un veicolo
Config.VdmChance = 3       -- dopo quanti vdm un player deve essere kikkato
Config.VdmRemover = 10     -- dopo quanto tempo un vdm viene tolto (in minuti)
Config.UseNotificationSound = true
Config.NotificationSound = {
    "TIMER_STOP",
    "HUD_MINI_GAME_SOUNDSET"
}

function Config.revivePlayer(player)
    TriggerEvent('esx_ambulancejob:revive') -- change to your revive trigger or export
end

function Config.sendNotification(title, desc)
    lib.notify({
        title = title,
        description = desc,
        position = 'top',
        style = {
            backgroundColor = '#F03E3E',
            color = '#FFF5F5',
            padding = '15px',
            borderRadius = '8px',
            ['.description'] = {
                color = '#FFE3E3'
            }
        },
        icon = 'exclamation-triangle',
        iconColor = '#FFA500'
    })
end

Config.Lang = {
    ["title"] = "ANTI VDM SYSTEM",
    ["desc"] = " WARN | Sei stato warnato per aver investito un player (Nova Vdm System)    ",
    ["punish_event"] = "Sei stato bannato per aver triggerato un evento",
    ["punish_vdm"] = "Sei stato bannato per fatto vari vdm",
    ["ress"] = "Sei stato ressato! | Nova Scripts"
}
