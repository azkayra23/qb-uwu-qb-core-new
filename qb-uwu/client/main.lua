local QBCore = exports["qb-core"]:GetCoreObject()
local Player = QBCore.Functions.GetPlayer
local onDuty = false

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
	QBCore.Functions.GetPlayerData(function(PlayerData)
		PlayerJob = PlayerData.job
		if PlayerData.job.onduty then
			if PlayerData.job.name == "uwu" then
				TriggerServerEvent("QBCore:ToggleDuty")
			end
		end
	end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)
----personaslstash
RegisterNetEvent('qb-uwu:client:openStash', function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwupersonalstash"..QBCore.Functions.GetPlayerData().citizenid)
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwupersonalstash"..QBCore.Functions.GetPlayerData().citizenid,{
	maxweight = 500000,
	slots = 50,
	})
end)
RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent("qb-uwu:DutyUwu", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

Citizen.CreateThread(function()
    uwu = AddBlipForCoord(-582.49, -1062.94, 22.35)
    SetBlipSprite (uwu, 463)
    SetBlipDisplay(uwu, 4)
    SetBlipScale  (uwu, 0.9)
    SetBlipAsShortRange(uwu, true)
    SetBlipColour(uwu, 34)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("UwU Cafe")
    EndTextCommandSetBlipName(uwu)
end)

RegisterNetEvent("qb-uwu:Tray1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray1", {
        maxweight = 10000,
        slots = 8,
    })
end)

RegisterNetEvent("qb-uwu:Tray2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray2", {
        maxweight = 10000,
        slots = 8,
    })
end)

RegisterNetEvent("qb-uwu:Tray3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray3", {
        maxweight = 10000,
        slots = 8,
    })
end)

RegisterNetEvent("qb-uwu:Tray4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwutray4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwutray4", {
        maxweight = 10000,
        slots = 8,
    })
end)

RegisterNetEvent("qb-uwu:Storage", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwustorage")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwustorage", {
        maxweight = 25000000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-uwu:Storage2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "uwustorage2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "uwustorage2", {
        maxweight = 250000,
        slots = 40,
    })
end)

--Food Preparation

--Bento Box
RegisterNetEvent("qb-uwu:bentobox", function()
	local randomToy = math.random(1, 100)
	TriggerServerEvent('QBCore:Server:RemoveItem', "uwubentobox", 1)
	--add items from box to inventory
	TriggerServerEvent('QBCore:Server:AddItem', "uwusushi", 1)
	TriggerServerEvent('QBCore:Server:AddItem', "uwububbletearose", 1)
	TriggerServerEvent('QBCore:Server:AddItem', "uwubudhabowl", 1)
	if randomToy < 45 then
		QBCore.Functions.Notify("Karen stole your toy :(", "uwu")
	elseif randomToy == 69 then
		TriggerServerEvent('QBCore:Server:AddItem', "uwu_toy1", 1)
		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwu_toy1"], "add")
	elseif randomToy > 45 and randomToy < 53 then
		TriggerServerEvent('QBCore:Server:AddItem', "uwu_toy2", 1)
		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwu_toy2"], "add")
		QBCore.Functions.Notify("^=◕ᴥ◕=^ lucky you! :)", "uwu")
	elseif randomToy == 54 then
		TriggerServerEvent('QBCore:Server:AddItem', "uwu_toy3", 1)
		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwu_toy3"], "add")
		QBCore.Functions.Notify("^=◕ᴥ◕=^ lucky you! :)", "uwu")
	elseif randomToy > 55 and randomToy < 69 then
		TriggerServerEvent('QBCore:Server:AddItem', "uwu_toy4", 1)
		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwu_toy3"], "add")
		QBCore.Functions.Notify("^=◕ᴥ◕=^ lucky you! :)", "uwu")
	elseif randomToy > 70 and randomToy < 85 then
		TriggerServerEvent('QBCore:Server:AddItem', "uwu_toy4", 1)
		TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwu_toy4"], "add")
		QBCore.Functions.Notify("^=◕ᴥ◕=^ lucky you! :)", "uwu")
	else
		QBCore.Functions.Notify("Karen stole your toy :(", "uwu")
	end
end)

RegisterNetEvent("qb-uwu:CreateBentobox", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientBentobox', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Preparing a Bento Box..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "uwusushi", 1) --remove
					exports['qb-inventory']:toggleItem(0, "uwububbletearose", 1)--remove
					exports['qb-inventory']:toggleItem(0, "uwubudhabowl", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwubentobox", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwubentobox"], "add")
					QBCore.Functions.Notify("You prepared a purrrrfect Bentobox!", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)


-- Miso Soup (water + misopaste + tofu)

RegisterNetEvent("qb-uwu:misoSoup", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientMiso', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "waterfilledcup", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Making Miso Soup..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "water_bottle", 1) --remove
					exports['qb-inventory']:toggleItem(0, "misopaste", 1)--remove
					exports['qb-inventory']:toggleItem(0, "tofu", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwumisosoup", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwumisosoup"], "add")
					QBCore.Functions.Notify("You made a healing Miso Soup!", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Pancake (flour + egg + milkcarton cheese)

RegisterNetEvent("qb-uwu:pancake", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientPancake', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Making Pancakes..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "milk_pack", 1) --remove
					exports['qb-inventory']:toggleItem(0, "egg", 1)--remove
					exports['qb-inventory']:toggleItem(0, "chees", 1)--remove
					exports['qb-inventory']:toggleItem(0, "flour", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwupancake", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwupancake"], "add")
					QBCore.Functions.Notify("You made a Pancake", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Blueberry Bubbletea (water + tea + uwubbessence + tapiokaballs)

RegisterNetEvent("qb-uwu:bbtea", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientBbtea', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "waterfilledcup", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Making Bubble Tea..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "water_bottle", 1)
					exports['qb-inventory']:toggleItem(0, "tea", 1)
					exports['qb-inventory']:toggleItem(0, "uwubbessence", 1)
					exports['qb-inventory']:toggleItem(0, "tapiokaballs", 1)
					exports['qb-inventory']:toggleItem(1, "uwububbleteablueberry", 1)
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwububbleteablueberry"], "add")
					QBCore.Functions.Notify("You made Blueberry Bubble Tea", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Rose Bubbletea (water + tea + uwuroseessence + tapiokaballs)

RegisterNetEvent("qb-uwu:rosetea", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientRosetea', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "waterfilledcup", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Making Bubble Tea..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "water_bottle", 1) --remove
					exports['qb-inventory']:toggleItem(0, "tea", 1)--remove
					exports['qb-inventory']:toggleItem(0, "uwuroseessence", 1)--remove
					exports['qb-inventory']:toggleItem(0, "tapiokaballs", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwububbletearose", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwububbletearose"], "add")
					QBCore.Functions.Notify("You made Rose Bubble Tea", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Mint Bubbletea (tea + milkcartoncarton + uwumintessence + tapiokaballs)

RegisterNetEvent("qb-uwu:minttea", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientMinttea', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "waterfilledcup", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Making Bubble Tea..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "water_bottle", 1) --remove
					exports['qb-inventory']:toggleItem(0, "tea", 1)--remove
					exports['qb-inventory']:toggleItem(0, "uwumintessence", 1)--remove
					exports['qb-inventory']:toggleItem(0, "tapiokaballs", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwububbleteamint", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwububbleteamint"], "add")
					QBCore.Functions.Notify("You made Mint Bubble Tea", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Cupcakes (rawsugar + milkcartoncarton + egg + flour)

RegisterNetEvent("qb-uwu:cupcake", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientCupcake', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Mixing Cupcakes..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "milk_pack", 1) --remove
					exports['qb-inventory']:toggleItem(0, "egg", 1)--remove
					exports['qb-inventory']:toggleItem(0, "rawsugar", 1)--remove
					exports['qb-inventory']:toggleItem(0, "flour", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwucupcake", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cupcake"], "add")
					QBCore.Functions.Notify("You made some Cupcake", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

--uWu Sushi (blue fin tuna, avoacado, rice, and nori sheets)

RegisterNetEvent("qb-uwu:sushi", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientSushi', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Creating Sushi..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "tuna", 1) --remove   	---obtained from fishing (complete)
					exports['qb-inventory']:toggleItem(0, "rice", 1)--remove		---obtained by farming rice on riverbank
					exports['qb-inventory']:toggleItem(0, "avocado", 1)--remove		---obtained by collecting from farming avocado trees
					exports['qb-inventory']:toggleItem(0, "nori", 1)--remove		---seaweed obtained from fishing and prepared into nori sheets (seaweed in fishing)
					exports['qb-inventory']:toggleItem(1, "uwusushi", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwusushi"], "add")
					QBCore.Functions.Notify("You made some Sushi!", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

--uWu Budha Bowl (Mixedlettuce, Tofu, Umami Beans, Avocado and Mango)

RegisterNetEvent("qb-uwu:CreateBudhabowl", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientBudhabowl', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Creating Budha Bowl..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "mixedlettuce", 1) --remove   	---obtained from fishing (complete)
					exports['qb-inventory']:toggleItem(0, "tofu", 1)--remove		---obtained by farming rice on riverbank
					exports['qb-inventory']:toggleItem(0, "avocado", 1)--remove		---obtained by collecting from farming avocado trees
					exports['qb-inventory']:toggleItem(0, "mango", 1)--remove		---seaweed obtained from fishing and prepared into nori sheets (seaweed in fishing)
					exports['qb-inventory']:toggleItem(0, "umami", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwubudhabowl", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwubudhabowl"], "add")
					QBCore.Functions.Notify("You made a Budha Bowl!", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Vanilla Sandwich (Milkcarton flour rawsugar egg vanillabean [these will change])

RegisterNetEvent("qb-uwu:vSandwich", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientvSandwich', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Creating a Vanilla Sandy..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "milk_pack", 1) --remove
					exports['qb-inventory']:toggleItem(0, "flour", 1)--remove
					exports['qb-inventory']:toggleItem(0, "rawsugar", 1)--remove
					exports['qb-inventory']:toggleItem(0, "egg", 1)--remove
					exports['qb-inventory']:toggleItem(0, "vanillabean", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwuvanillasandy", 1) --additem
					---TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwuvanillasandy"], "add")
					QBCore.Functions.Notify("You made a Vanilla Sandy!", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

-- Chocolate Sandwich (Milkcarton flour rawsugar egg chocolate [these will change])

RegisterNetEvent("qb-uwu:cSandwich", function()
	if onDuty then
		QBCore.Functions.TriggerCallback('qb-uwu:server:get:ingredientcSandwich', function(HasItems)
			if HasItems then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "cookingsteak", 0.25)
				TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
				QBCore.Functions.Progressbar("pickup_sla", "Creating a Chocolate Sandy..", 10000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {}, {}, {}, function() -- Done
					TriggerEvent('animations:client:EmoteCommandStart', {"c"})
					exports['qb-inventory']:toggleItem(0, "milk_pack", 1) --remove
					exports['qb-inventory']:toggleItem(0, "flour", 1)--remove
					exports['qb-inventory']:toggleItem(0, "rawsugar", 1)--remove
					exports['qb-inventory']:toggleItem(0, "egg", 1)--remove
					exports['qb-inventory']:toggleItem(0, "chocolate", 1)--remove
					exports['qb-inventory']:toggleItem(1, "uwuchocsandy", 1) --additem
					--TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uwuchocsandy"], "add")
					QBCore.Functions.Notify("You made some Sushi!", "uwu")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "uwu")
				end)
			else
				QBCore.Functions.Notify("You need ingredients MeOw", "uwu")
			end
		end)
	else
		QBCore.Functions.Notify("Tick Tock hit that clockIN", "uwu")
	end
end)

RegisterNetEvent("qb-uwu:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "uwu", Config.Items)
end)


--Uncomment if you would like some pussies for fun and a ped for sales

local uwucats = {
	{-578.67, -1051.14, 22.55, nil, 184.38, nil, 0x573201B8}, --fireplace
	{-582.97, -1069.55, 22.78, nil, 191.27, nil, 0x573201B8}, --windowseat
	}
	Citizen.CreateThread(function()
	for _,v in pairs(uwucats) do
		RequestModel(v[7])
		while not HasModelLoaded(v[7]) do
			Wait(1000)
		end
		RequestAnimDict("amb@lo_res_idles@")
		while not HasAnimDictLoaded("amb@lo_res_idles@") do
			Wait(1000)
		end
		ped =  CreatePed(4, v[7],v[1],v[2],v[3]-1, 3374176, false, true)
		SetEntityHeading(ped, v[5])
		FreezeEntityPosition(ped, true)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
		TaskPlayAnim(ped,"amb@lo_res_idles@","creatures_world_cat_ledge_sleep_lo_res_base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
	end
end)

local uwucat = {
	{-584.28, -1062.94, 23.40, nil, 38.97, nil, 0x573201B8}, --counter
}
Citizen.CreateThread(function()
	for _,v in pairs(uwucat) do
		RequestModel(v[7])
		while not HasModelLoaded(v[7]) do
			Wait(1000)
		end
		RequestAnimDict("amb@lo_res_idles@")
		while not HasAnimDictLoaded("amb@lo_res_idles@") do
			Wait(1000)
		end
		ped =  CreatePed(4, v[7],v[1],v[2],v[3]-1, 3374176, false, true)
		SetEntityHeading(ped, v[5])
		FreezeEntityPosition(ped, false)
		SetEntityInvincible(ped, true)
		SetBlockingOfNonTemporaryEvents(ped, true)
		TaskPlayAnim(ped,"amb@lo_res_idles@","creatures_world_cat_ground_sleep_lo_res_base", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
	end
end)

-- local uwusales = {
-- 	{-584.77, -1059.01, 22.34, nil, 262.74, nil, 0x969B6DFE},
-- }
-- Citizen.CreateThread(function()
-- 	for _,v in pairs(uwusales) do
-- 		RequestModel(v[7])
-- 		while not HasModelLoaded(v[7]) do
-- 			Wait(1000)
-- 		end
-- 		RequestAnimDict("anim@amb@board_room@whiteboard@")
-- 		while not HasAnimDictLoaded("anim@amb@board_room@whiteboard@") do
-- 			Wait(1000)
-- 		end
-- 		ped = CreatePed(4, v[7],v[1],v[2],v[3]-1, 3374176, false, true)
-- 		SetEntityHeading(ped, v[5])
-- 		FreezeEntityPosition(ped, true)
-- 		SetEntityInvincible(ped, true)
-- 		SetBlockingOfNonTemporaryEvents(ped, true)
-- 		TaskPlayAnim(ped,"anim@amb@board_room@whiteboard@", "think_01_amy_skater_01", 8.0, 0.0, -1, 1, 0, 0, 0, 0)
-- 	end
-- end)