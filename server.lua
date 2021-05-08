--Skrypt stworzony zostal przez https://github.com/verkus1337, po ewentualną pomoc zapraszam na discord https://discord.gg/3HYD723RBf
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('verkus:wyslijwebhookaZIELONY')
AddEventHandler('verkus:wyslijwebhookaZIELONY', function(information)
    local embeds = {
        {
            ["title"] = "Aktualny kod: ZIELONY",
            ["type"]="rich",
            ["color"] = 456750,
            ["fields"] = {
                {
                    ["name"] = "LSPD",
                    ["value"] = "Zaaktualizowano kod zagrożenia na mieście.",
                    ["inline"] = true,
                },
            },
            ["thumbnail"]=  {
                ["url"] = "https://cdn.discordapp.com/attachments/723191081981968455/840362049099137074/verkus_zielony.png",
            },
        }
    }
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Kod zagrożenia",embeds = embeds}), { ['Content-Type'] = 'application/json' })    
end)
RegisterNetEvent('verkus:wyslijwebhookaPOMARANCZOWY')
AddEventHandler('verkus:wyslijwebhookaPOMARANCZOWY', function(information)
    local embeds = {
        {
            ["title"] = "Aktualny kod: POMARAŃCZOWY",
            ["type"]="rich",
            ["color"] = 15442208,
            ["fields"] = {
                {
                    ["name"] = "LSPD",
                    ["value"] = "Zaaktualizowano kod zagrożenia na mieście.",
                    ["inline"] = true,
                },
            },
            ["thumbnail"]=  {
                ["url"] = "https://cdn.discordapp.com/attachments/723191081981968455/840362231774314496/verkus_pomaranczowy.png",
            },
        }
    }
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Kod zagrożenia",embeds = embeds}), { ['Content-Type'] = 'application/json' })    
end)
RegisterNetEvent('verkus:wyslijwebhookaCZERWONY')
AddEventHandler('verkus:wyslijwebhookaCZERWONY', function(information)
    local embeds = {
        {
            ["title"] = "Aktualny kod: CZERWONY",
            ["type"]="rich",
            ["color"] = 16061717,
            ["fields"] = {
                {
                    ["name"] = "LSPD",
                    ["value"] = "Zaaktualizowano kod zagrożenia na mieście.",
                    ["inline"] = true,
                },
            },
            ["thumbnail"]=  {
                ["url"] = "https://cdn.discordapp.com/attachments/723191081981968455/840362396613738516/verkus_czerwony.png",
            },
        }
    }
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Kod zagrożenia",embeds = embeds}), { ['Content-Type'] = 'application/json' })    
end)
RegisterNetEvent('verkus:wyslijwebhookaCZARNY')
AddEventHandler('verkus:wyslijwebhookaCZARNY', function(information)
    local embeds = {
        {
            ["title"] = "Aktualny kod: CZARNY",
            ["type"]="rich",
            ["color"] = 0,
            ["fields"] = {
                {
                    ["name"] = "LSPD",
                    ["value"] = "Zaaktualizowano kod zagrożenia na mieście.",
                    ["inline"] = true,
                },
            },
            ["thumbnail"]=  {
                ["url"] = "https://cdn.discordapp.com/attachments/723191081981968455/840362835186810941/verkus_czarny.png",
            },
        }
    }
    PerformHttpRequest(Config.Webhook, function(err, text, headers) end, 'POST', json.encode({ username = "Kod zagrożenia",embeds = embeds}), { ['Content-Type'] = 'application/json' })    
end)
--Skrypt stworzony zostal przez https://github.com/verkus1337, po ewentualną pomoc zapraszam na discord https://discord.gg/3HYD723RBf