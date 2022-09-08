local QBCore = exports['qb-core']:GetCoreObject()

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("uwuDuty", vector3(-1837.14, -1184.69, 14.31), 0.5, 0.2, {
		name = "uwuDuty",
        heading=245,
        --debugPoly=true,
        minZ=11.11,
        maxZ=15.11,
	}, {
		options = {
		    {
			event = "qb-uwu:DutyUwu",
			icon = "far fa-clipboard",
			label = "Clock On/Off",
			job = "uwu",
		    },
		},
		distance = 2.5
	})

		exports['qb-target']:AddBoxZone("uwu_tray_1", vector3(-1835.72, -1186.78, 14.31), 0.5, 0.5, {
			name = "uwu_tray_1",
            heading=345,
            --debugPoly=true,
            minZ=11.11,
            maxZ=15.11,
		}, {
			options = {
			    {
				event = "qb-uwu:Tray1",
				icon = "far fa-clipboard",
				label = "Tray 1",
			    },
			},
			distance = 1.5
		})

	exports['qb-target']:AddBoxZone("uwu_tray_2", vector3(-1837.74, -1190.32, 14.31), 0.4, 0.3, {
		name="uwu_tray_2",
        heading=225,
        --debugPoly=true,
        minZ=11.11,
        maxZ=15.11,
	}, {
		options = {
		    {
			event = "qb-uwu:Tray2",
			icon = "far fa-clipboard",
			label = "Tray 2",
		    },
		},
		distance = 1.5
	})

	exports['qb-target']:AddBoxZone("uwu_tray_3", vector3(-1838.67, -1191.84, 14.31), 0.4, 0.4, {
		name="uwu_tray_3",
        heading=330,
        --debugPoly=true,
        minZ=10.71,
        maxZ=14.71,
	}, {
		options = {
		    {
			event = "qb-uwu:Tray3",
			icon = "far fa-clipboard",
			label = "trai 4",
		    },
		},
		distance = 3.5
	})

    exports['qb-target']:AddBoxZone("uwu_tray_4", vector3(-1841.0, -1188.5, 14.31), 0.6, 0.6, {
		name="uwu_tray_4",
        heading=330,
        --debugPoly=true,
        minZ=10.91,
        maxZ=14.91
	}, {
		options = {
		    {
			event = "qb-uwu:Tray4",
			icon = "far fa-clipboard",
			label = "Kitchen to Front of House",
		    },
		},
		distance = 3.5
	})

    exports['qb-target']:AddBoxZone("Storage2", vector3(-1841.41, -1191.37, 14.31), 0.6, 0.7, {
		name="Storage2",
        heading=330,
        --debugPoly=true,
        minZ=10.91,
        maxZ=14.91
	}, {
		options = {
		    {
			event = "qb-uwu:Storage",
			icon = "fas fa-box",
			label = "storage",
            job = "uwu",
		    },
		},
		distance = 3.5
	})

	exports['qb-target']:AddBoxZone("uwudrinks", vector3(-1840.66, -1187.66, 14.31), 0.5, 0.7, {
        name="uwudrinks",
        heading=330,
        --debugPoly=true,
        minZ=11.31,
        maxZ=15.31,
	    }, {
		options = {
		    {
			event = "uwu:DrinkMenu",
			icon = "fas fa-filter",
			label = "Beverages",
			job = "uwu",
		    },
		},
		distance = 2.0
	    })

        exports['qb-target']:AddBoxZone("uwufridge", vector3(-1844.4, -1190.45, 14.31), 1.6, 0.4,  {
            name="uwufridge",
            heading=240,
            --debugPoly=true,
            minZ=11.71,
            maxZ=15.71,
        }, {
                options = {
                    {
                        event = "uwu:stock",
                        icon = "fas fa-laptop",
                        label = "Ingredients",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("pancakeStation", vector3(-1844.57, -1186.15, 14.31), 0.8, 0.7, {
            name="pancakeSation",
            heading=330,
            --debugPoly=true,
            minZ=11.11,
            maxZ=15.11,
        }, {
                options = {
                    {
                        event = "uwu:pancake",
                        icon = "fas fa-rocket",
                        label = "Pancake Cooking",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("misoStation", vector3(-1843.73, -1184.82, 14.31), 0.7, 0.7, {
            name="misoStation",
            heading=330,
            --debugPoly=true,
            minZ=10.91,
            maxZ=14.91,
        }, {
                options = {
                    {
                        event = "uwu:misoSoup",
                        icon = "fas fa-rocket",
                        label = "Make Miso Soup",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("cupcakeStation", vector3(-1844.93, -1186.83, 14.31), 0.6, 0.6, {
            name="cupcakeStation",
            heading=330,
            --debugPoly=true,
            minZ=11.11,
            maxZ=15.11,
        }, {
                options = {
                    {
                        event = "uwu:cupcake",
                        icon = "fas fa-rocket",
                        label = "Cupcakes",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("sandwichStation", vector3(-1845.44, -1187.69, 14.31), 0.6, 0.6, {
            name="sandwichStation",
            heading=330,
            --debugPoly=true,
            minZ=10.91,
            maxZ=14.91,
        }, {
                options = {
                    {
                        event = "uwu:sandysushi",
                        icon = "fas fa-rocket",
                        label = "uWu Yum Yum's",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("uwu_register_1", vector3(-584.25, -1058.8, 22.37), 0.5, 0.4, {
            name="uwu_register_1",
            debugpoly = false,
            heading=270,
            minZ=21.0,
            maxZ=22.8,
        }, {
                options = {
                    {
                        event = "qb-uwu:bill",
                        parms = "1",
                        icon = "fas fa-credit-card",
                        label = "Charge Customer",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("uwu_register_2", vector3(-584.25, -1061.5, 22.37), 0.6, 0.5, {
            name="uwu_register_2",
            debugpoly = false,
            heading=270,
            minZ=21.0,
            maxZ=22.8,
            }, {
                    options = {
                        {
                            event = "qb-uwu:bill",
                            parms = "2",
                            icon = "fas fa-credit-card",
                            label = "Charge Customer",
                            job = "uwu",
                        },
                    },
                    distance = 1.5
                })
                exports['qb-target']:AddBoxZone("uwustorage", vector3(-1842.07, -1181.81, 14.31), 0.8, 1, {
                    name="uwustorage",
                    heading=330,
                    --debugPoly=true,
                    minZ=10.91,
                    maxZ=14.91,
                    }, {
                            options = {
                                {
                                    event = "qb-uwu:Storage",
                                    icon = "fas fa-box",
                                    label = "Storage",
                                    job = "uwu",
                                },
                            },
                            distance = 1.5
                        })

                        exports['qb-target']:AddBoxZone("personalstash", vector3(-1818.36, -1189.24, 19.42), 0.6, 0.4, {
                            name="personalstash",
                            heading=240,
                            --debugPoly=true,
                            minZ=16.22,
                            maxZ=20.22,
                            }, {
                                    options = {
                                        {
                                            event = "qb-uwu:client:openStash",
                                            icon = "fas fa-box",
                                            label = "personal stash",
                                            job = "uwu",
                                        },
                                    },
                                    distance = 1.5
                                })
                                exports['qb-target']:AddBoxZone("bossmenu", vector3(-1830.26, -1196.91, 19.42), 0.6, 0.2, {
                                    name="bossmenu",
                                    heading=260,
                                    --debugPoly=true,
                                    minZ=16.02,
                                    maxZ=20.02,
                                    }, {
                                            options = {
                                                {
                                                    type = "server",
                                                    event = "qb-bossmenu:server:openMenu",
                                                    icon = "fa-solid fa-book",
                                                    label = "Boss Menu",
                                                    job = "uwu",
                                                },
                                            },
                                            distance = 1.5
                                        })
end)

RegisterNetEvent('uwu:stock', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Fridge |",
            isMenuHeader = true,
        },
        {   id = 1,
            header = "• Browse Ingredients",
            txt = "Availability access",
            params = {
                event = "qb-uwu:shop"
            }
        },
        {   id = 2,
            header = "• Open Fridge",
            txt = "See what you have in storage",
            params = {
                event = "qb-uwu:Storage"
            }
        },
        {
            header = "⬅ Close Menu",
            txt = 'meOw',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--Preparing Food--
--Pancakes
RegisterNetEvent('uwu:pancake', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Pancake Station |",
            isMenuHeader = true,
        },
        {
            header = "• Pancakes",
            txt = "Milk, Egg, Cheese and Flour",
            params = {
                event = "qb-uwu:pancake"
            }
        },
        {
            header = "⬅ Close Menu",
            txt = 'meOw',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--Miso Soup--
RegisterNetEvent('uwu:misoSoup', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Miso Soup Station |",
            isMenuHeader = true,
        },
        {
            header = "• Make Miso Soup",
            txt = "Miso Paste, Water and Tofu",
            params = {
                event = "qb-uwu:misoSoup"
            }
        },
        {
            header = "⬅ Close Menu",
            txt = 'meOw',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--Cupcake--
RegisterNetEvent('uwu:cupcake', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Cupcake Station |",
            isMenuHeader = true,
        },
        {
            header = "• Make some cupcakes",
            txt = "Milk, Egg, Raw Sugar and Flour",
            params = {
                event = "qb-uwu:cupcake"
            }
        },
        {
            header = "⬅ Close Menu",
            txt = 'meOw',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--uwusandy--
RegisterNetEvent('uwu:sandysushi', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Food Creation Station |",
            isMenuHeader = true,
        },
        {
            header = "• Make some Sushi",
            txt = "Tuna Fillet, Rice, Avocado, and Nori",
            params = {
                event = "qb-uwu:sushi"
            }
        },
        {
            header = "• Make a Vanilla Sandwich",
            txt = "Milk, Flour, Raw Sugar, Egg and Vanilla Bean",
            params = {
                event = "qb-uwu:vSandwich"
            }
        },
        {
            header = "• Make a Chocolate Sandwich",
            txt = "Milk, Flour, Raw Sugar, Egg and Chocolate",
            params = {
                event = "qb-uwu:cSandwich"
            }
        },
        {
            header = "• Prepare an uWu Budha Bowl",
            txt = "Mixedlettuce, Tofu, Umami Beans, Mango and Avocado",
            params = {
                event = "qb-uwu:CreateBudhabowl"
            }
        },
        {
            header = "• Prepare an uWu Bentobox",
            txt = "uWwu Sushi, uWu Rose Bubbletea and uWu Budhabowl",
            params = {
                event = "qb-uwu:CreateBentobox"
            }
        },
        {
            header = "⬅ Close Menu",
            txt = 'meOw',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

-- Bubble Tea--
RegisterNetEvent('uwu:DrinkMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Drink Menu |",
            isMenuHeader = true,
        },
        {   id = 1,
            header = "• Blueberry Bubble Tea",
            txt = "Water, Tea, BlueBerry Essence and Tapioka Balls",
            url = 'https://cdn.discordapp.com/attachments/987758116399628328/987932606844788756/uwububbleteablueberry-removebg-preview.png',
            params = {
                event = "qb-uwu:bbtea"
            } 
        },
        {   id = 2,
            header = "• Rose Bubble Tea",
            txt = "Water, Tea, Rose Essence and Tapioka Balls",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987933515511394314/uwububbletearose-removebg-preview.png",
            params = {
                event = "qb-uwu:rosetea"
            }
        },
        {   id = 3,
            header = "• Mint Bubble Tea",
            txt = "Water, Tea, Mint Essence and Tapioka Balls",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987933347361718342/uwububbleteamint-removebg-preview.png",
            params = {
                event = "qb-uwu:minttea"
            }
        },
        {   
            header = "| Food Creation Station |",
            isMenuHeader = true,
        },
        {   id = 4,
            header = "• Make some Sushi",
            txt = "Tuna Fillet, Rice, Avocado, and Nori",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987933809834082394/uwusushi-removebg-preview.png",
            params = {
                event = "qb-uwu:sushi"
            }
        },
        {   id = 5,
            header = "• Make a Vanilla Sandwich",
            txt = "Milk, Flour, Raw Sugar, Egg and Vanilla Bean",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987933971759374436/uwuvanillasandy-removebg-preview.png",
            params = {
                event = "qb-uwu:vSandwich"
            }
        },
        {   id = 6,
            header = "• Make a Chocolate Sandwich",
            txt = "Milk, Flour, Raw Sugar, Egg and Chocolate",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987934209568018432/uwuchocsandy-removebg-preview.png",
            params = {
                event = "qb-uwu:cSandwich"
            }
        },
        {   id = 7,
            header = "• Prepare an uWu Budha Bowl",
            txt = "Mixedlettuce, Tofu, Umami Beans, Mango and Avocado",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987935623346266182/black-tiles-0-designify.png",
            params = {
                event = "qb-uwu:CreateBudhabowl"
            }
        },
        {   id = 8,
            header = "• Prepare an uWu Bentobox",
            txt = "uWwu Sushi, uWu Rose Bubbletea and uWu Budhabowl",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987935623086215229/black-tiles-4-designify.png",
            params = {
                event = "qb-uwu:CreateBentobox"
            }
        },
        {
            header = "| Cupcake Station |",
            isMenuHeader = true,
        },
        {   id = 9,
            header = "• Make some cupcakes",
            txt = "Milk, Egg, Raw Sugar and Flour",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987935622222217266/black-tiles-1-designify.png",
            params = {
                event = "qb-uwu:cupcake"
            }
        },
        {
            header = "| Miso Soup Station |",
            isMenuHeader = true,
        },
        {   id = 10,
            header = "• Make Miso Soup",
            txt = "Miso Paste, Water and Tofu",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987935622511599626/black-tiles-2-designify.png",
            params = {
                event = "qb-uwu:misoSoup"
            }
        },
        {
            header = "| Pancake Station |",
            isMenuHeader = true,
        },
        {   id = 10,
            header = "• Pancakes",
            txt = "Milk, Egg, Cheese and Flour",
            url = "https://cdn.discordapp.com/attachments/987758116399628328/987935622826188820/black-tiles-3-designify.png",
            params = {
                event = "qb-uwu:pancake"
            }
        },
                    
        {
            header = "⬅ Close Menu",
            txt = 'meOw',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

-- Register --

RegisterNetEvent("qb-uwu:bill", function()
    local bill = exports["qb-input"]:ShowInput({
        header = "Create Receipt",
        submitText = "Charge Customer",
        inputs = {
            {
                type = 'number',
                name = "id",
                text = 'ID',
                isRequired = true,
            },
            {
                type = 'number',
                name = "amount",
                text = '$',
                isRequired = true
            },
        }
    })
    if bill ~= nil then
        if not bill.id or not bill.amount then
            return
        end
        TriggerServerEvent("qb-uwu:bill:player", bill.id, bill.amount)
    end
end)