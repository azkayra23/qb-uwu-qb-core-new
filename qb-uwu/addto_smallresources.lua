-- Add to nb-smallresources/server/consumables.lua

--uWu Cafe--
NBCore.Functions.CreateUseableItem("uwububbleteablueberry", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwububbletearose", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwububbleteamint", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwububbleteablueberry", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwupancake", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatPancakes", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwucupcake", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatDonut", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwuvanillasandy", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwuvanillasandy", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwuchocsandy", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwuchocsandy", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwubudhabowl", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwubudhabowl", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwusushi", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:EatPancakes", source, item.name)
    end
end)
NBCore.Functions.CreateUseableItem("uwumisosoup", function(source, item)
    local src = source
    local Player = NBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:uwumisosoup", source, item.name)
    end
end)


--- Add to nb-smallresources/client/consumables.lua

--uWu Cafe
RegisterNetEvent("consumables:client:uwububbleteablueberry", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"bubbletea"})
    action = true
    NBCore.Functions.Progressbar("drink_something", "Popping some Bubble Tea..", 10000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", NBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)
        TriggerServerEvent("NBCore:Server:SetMetaData", "thirst", NBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesDrink[itemName])
        action = false
    end)
end)
RegisterNetEvent("consumables:client:uwumisosoup", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"misosoup"})
    action = true
    NBCore.Functions.Progressbar("drink_something", "Supping some Soup..", 10000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", NBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)
        TriggerServerEvent("NBCore:Server:SetMetaData", "thirst", NBCore.Functions.GetPlayerData().metadata["thirst"] + ConsumeablesDrink[itemName])
        action = false
    end)
end)
RegisterNetEvent("consumables:client:uwubudhabowl", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"budhabowl"})
    action = true
    NBCore.Functions.Progressbar("eat_something", "Banging a bowl of goodness..", 10000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", NBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)
        TriggerServerEvent("NBCore:Server:SetMetaData", "hunger", NBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
        action = false
    end)
end)
RegisterNetEvent("consumables:client:uwuvanillasandy", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    action = true
    NBCore.Functions.Progressbar("eat_something", "uWu Icecream Mmm..", 10000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", NBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)
        TriggerServerEvent("NBCore:Server:SetMetaData", "hunger", NBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
        action = false
    end)
end)
RegisterNetEvent("consumables:client:uwuchocsandy", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    action = true
    NBCore.Functions.Progressbar("eat_something", "uWu Icecream Mmm..", 10000, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", NBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        DeleteObject(prop)
        TriggerServerEvent("NBCore:Server:SetMetaData", "hunger", NBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
        action = false
    end)
end)

--update event below to use the "uwusandy" emote to change the prop

RegisterNetEvent("consumables:client:EatPancakes", function(itemName)
    TriggerEvent('animations:client:EmoteCommandStart', {"uwusandy"})
    NBCore.Functions.Progressbar("eat_something", "MmmmMMmmmm", 6500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function() -- Done
        TriggerEvent("inventory:client:ItemBox", NBCore.Shared.Items[itemName], "remove")
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        TriggerServerEvent("NBCore:Server:SetMetaData", "hunger", NBCore.Functions.GetPlayerData().metadata["hunger"] + ConsumeablesEat[itemName])
    end)
end)


-- Add to nb-smallresources/config.lua under ConsumablesEat

-- UwU
    ["uwupancake"] = math.random(25, 34),
    ["uwubudhabowl"] = math.random(50, 60),
    ["uwusushi"] = math.random(45, 50),
    ["uwucupcake"] = math.random(40, 45),
    ["uwuvanillasandy"] = math.random(50, 65),
    ["uwuchocsandy"] = math.random(50, 65),

-- Add to nb-smallresources/config.lua under ConsumeablesDrink

-- UwU
    ["uwububbleteablueberry"] = math.random(55, 60),
    ["uwububbletearose"] = math.random(55, 60),
    ["uwububbleteamint"] = math.random(55, 60),
    ["uwumisosoup"] = math.random(80, 90),
