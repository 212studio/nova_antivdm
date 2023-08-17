--#--
--Fx info--
--#--
fx_version 'cerulean'
use_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'
version '1.0.3'

--#--
--Manifest--
--#--
shared_scripts {
    '@ox_lib/init.lua',
    'config.lua',
}

client_script "client/client.lua"
server_scripts { "server/server.lua", "server/editable.lua" }

dependency 'screenshot-basic'
