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

WEBHOOK = "https://discord.com/api/webhooks/1047910175262113832/hvDsxfE4-fKgzDuvLyXkji3BDsFSOIfy2mBesF46D7gkyRkWMgnoBdzAZ6e95s9bMrPt"

function punishPlayer(target, case)
    local message = ""

    if case == "event" then
        message = string.format("Sei stato kikkato/bannato per aver triggerato un evento (FREE ANTI-TRIGGER by https://discord.gg/XxtCBxwB)")
        createLog(true, target)
    elseif case == "vdm" then
        message = string.format("Sei stato kickato/bannato per aver fatto vari vdm all'interno di questo server!")
    end

    if message == "" then return end

    local header = "Nova Scripts | ANTI VDM SYSTEM"
    local footer = "Se credi che sia stato un errore, contatta l'assistenza!. \n by Nova Service (https://discord.gg/XxtCBxwB) \nANTIVDM SYSTEM"

    local fullMessage = string.format("%s\n\n%s\n\n%s", header, message, footer)

    DropPlayer(target, fullMessage)
end
