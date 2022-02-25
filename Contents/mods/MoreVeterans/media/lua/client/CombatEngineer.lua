ProfessionFramework.addProfession('CombatEngineerVeteran', {
    name = "Combat Engineer Veteran",
    icon = "profession_CombatEngineerVeteran",
    cost = -6,
    xp = {
        [Perks.Electricity] = 2,
        [Perks.Mechanics] = 2,
        [Perks.MetalWelding] = 2,
        [Perks.Woodwork] = 2,
        [Perks.Aiming] = 1,
        [Perks.Reloading] = 1,
    },
    clothing = {
        -- not working with the current version of the Profession Framework on steam. as date 02-JAN-2022
    },
    traits = {
        'Desensitized',
    },
    inventory = {
        ["Base.WristWatch_Right_ClassicMilitary"] = 1,
    },
    recipes = {
        "Make Aerosol bomb",
        "Make Flame bomb",
        "Make Pipe bomb",
        "Make Noise generator",
        "Make Smoke Bomb",
        "Make Remote Trigger",
        "Generator",
    },
    OnNewGame = function (player, square, profession)
        local bag = player:getInventory():AddItem("Base.Bag_ALICEpack_Army");
        bag:getItemContainer():AddItem("Base.PipeBomb");
        bag:getItemContainer():AddItem("Base.PipeBomb");
        bag:getItemContainer():AddItem("Base.PipeBomb");
        bag:getItemContainer():AddItem("Base.PipeBomb");
        bag:getItemContainer():AddItem("Base.PipeBomb");
        bag:getItemContainer():AddItem("Base.FlameTrap");
        bag:getItemContainer():AddItem("Base.FlameTrap");
        bag:getItemContainer():AddItem("Base.FlameTrap");
        bag:getItemContainer():AddItem("Base.FlameTrap");
        bag:getItemContainer():AddItem("Base.FlameTrap");
        bag:getItemContainer():AddItem("Base.FlameTrap");
        bag:getItemContainer():AddItem("Base.SmokeBomb");
        bag:getItemContainer():AddItem("Base.SmokeBomb");
        bag:getItemContainer():AddItem("Base.SmokeBomb");
        bag:getItemContainer():AddItem("Base.SmokeBomb");
        bag:getItemContainer():AddItem("Base.Aerosolbomb");
        bag:getItemContainer():AddItem("Base.Aerosolbomb");
        bag:getItemContainer():AddItem("Base.Aerosolbomb");

        local weapon = player:getInventory():AddItem("Revolver_Short"); -- It's the M36 Revolver
        weapon:setCurrentAmmoCount(5)

        player:getInventory():AddItem("Base.Bullets38Box");

        -- Attach pistol in the holster
        player:setAttachedItem("Holster Right", weapon);
        -- Force the weapon to be in the holster slot
        weapon:setAttachedSlot(2);
    end
})

ClothingSelectionDefinitions = ClothingSelectionDefinitions or {};

ClothingSelectionDefinitions.CombatEngineerVeteran = {
	Female = {
        Eyes = {
            items = {"Base.Glasses_SafetyGoggles"}
        },
        Necklace = {
            items = {"Base.Necklace_DogTag"}
        },
        Jacket = {
            items = {"Base.Jacket_ArmyCamoDesert"},
        },
		Shirt = {
			items = {"Base.Shirt_CamoDesert"},
		},
		Pants = {
			items = {"Base.Trousers_CamoDesert"},
		},
        Shoes = {
            items = {"Base.Shoes_ArmyBoots"}
        },
        BeltExtra = {
            items = {"Base.HolsterSimple"}
        },
        Hands = {
            items = {"Base.Gloves_LeatherGloves"}
        }
	},
}