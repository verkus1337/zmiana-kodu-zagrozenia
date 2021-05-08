--Skrypt stworzony zostal przez https://github.com/verkus1337, po ewentualną pomoc zapraszam na discord https://discord.gg/3HYD723RBf
ESX              = nil
PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
    Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)

local options = {
    {label = "<span style='color:green;'>Kod Zielony</span>", value = "kod_zielony"},
    {label = "<span style='color:orange;'>Kod Pomarańczowy</span>", value = "kod_pomaranczowy"},
    {label = "<span style='color:red;'>Kod Czerwony</span>", value = "kod_czerwony"},
    {label = "<span style='color:black;'>Kod Czarny</span>", value = "kod_czarny"},
    {label = "<span style='color:yellow;'>Wyjdź</span>", value = "exit"},

}

local isMenuOpen = false

RegisterCommand('ustawkod', function()
    PlayerData = ESX.GetPlayerData()
    if PlayerData.job ~= nil and PlayerData.job.name == 'police' then
        OpenMenu()
    end
end)


function OpenMenu()
    isMenuOpen = true
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'general_menu', {
        title = "Ustaw kod zagrożenia",
        align = "right",
        elements = options
    }, function(data, menu)
        local currentvalue = data.current.value
        if data.current.value == "exit" then
            menu.close()
        end
        if data.current.value == "kod_zielony" then
            TriggerServerEvent('verkus:wyslijwebhookaZIELONY');	TriggerEvent('chatMessage',"^4 👮‍♂️ LSPD: ^3Kod zagrożenia został zaaktualizowany. Obecny kod zagrożenia: ^2ZIELONY"); menu.close()
        end
        if data.current.value == "kod_pomaranczowy" then
            TriggerServerEvent('verkus:wyslijwebhookaPOMARANCZOWY'); TriggerEvent('chatMessage',"^4 👮‍♂️ LSPD: ^3Kod zagrożenia został zaaktualizowany. Obecny kod zagrożenia: ^8POMARAŃCZOWY"); menu.close()
        end
        if data.current.value == "kod_czerwony" then
            TriggerServerEvent('verkus:wyslijwebhookaCZERWONY'); TriggerEvent('chatMessage',"^4 👮‍♂️ LSPD: ^3Kod zagrożenia został zaaktualizowany. Obecny kod zagrożenia: ^1CZERWONY"); menu.close()
        end
        if data.current.value == "kod_czarny" then
            TriggerServerEvent('verkus:wyslijwebhookaCZARNY'); TriggerEvent('chatMessage',"^4 👮‍♂️ LSPD: ^3Kod zagrożenia został zaaktualizowany. Obecny kod zagrożenia: ^4CZARNY"); menu.close()
        end
    end,
    function(data, menu)
        isMenuOpen = false
        menu.close()
    end)
end
--Skrypt stworzony zostal przez https://github.com/verkus1337, po ewentualną pomoc zapraszam na discord https://discord.gg/3HYD723RBf