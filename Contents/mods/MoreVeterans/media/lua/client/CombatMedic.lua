ProfessionFramework.addProfession('CombatMedicVeteran', {
    name = "Combat Medic Veteran",
    icon = "profession_CombatMedicVeteran",
    cost = 0,
    xp = {
        [Perks.Doctor] = 3,
        [Perks.Aiming] = 2,
        [Perks.Reloading] = 1,
        [Perks.Nimble] = 1,
        [Perks.Lightfoot] = 1,
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
    OnNewGame = function (player, square, profession)
        local fak = player:getInventory():AddItem("Base.Bag_Schoolbag");
        fak:getItemContainer():AddItem("Base.AlcoholBandage");
        fak:getItemContainer():AddItem("Base.AlcoholBandage");
        fak:getItemContainer():AddItem("Base.AlcoholBandage");
        fak:getItemContainer():AddItem("Base.AlcoholBandage");
        fak:getItemContainer():AddItem("Base.AlcoholBandage");
        fak:getItemContainer():AddItem("Base.Tweezers");
        fak:getItemContainer():AddItem("Base.SutureNeedle");
        fak:getItemContainer():AddItem("Base.SutureNeedle");
        fak:getItemContainer():AddItem("Base.AlcoholWipes");
        fak:getItemContainer():AddItem("Base.AlcoholWipes");
        fak:getItemContainer():AddItem("Base.PillsBeta");
        fak:getItemContainer():AddItem("Base.PillsBeta");
        fak:getItemContainer():AddItem("Base.Pills");
        fak:getItemContainer():AddItem("Base.Pills");
        fak:getItemContainer():AddItem("Base.PillsVitamins");
        fak:getItemContainer():AddItem("Base.PillsVitamins");

        local weapon = player:getInventory():AddItem("Base.Pistol"); -- It's the M9
        local scope = InventoryItemFactory.CreateItem("Base.IronSight");
        local laser = InventoryItemFactory.CreateItem("Base.Laser");
        weapon:attachWeaponPart(scope)
        weapon:attachWeaponPart(laser)

        local magazines = {
            player:getInventory():AddItem("Base.9mmClip"),
            player:getInventory():AddItem("Base.9mmClip"),
            player:getInventory():AddItem("Base.9mmClip"),
        }

        for _, magazine in pairs(magazines) do
            magazine:setCurrentAmmoCount(magazine:getMaxAmmo())
        end

        weapon:setCurrentAmmoCount(magazines[1]:getCurrentAmmoCount())
	    weapon:setContainsClip(true)

        player:getInventory():AddItem("Base.Bullets9mmBox");

        -- Attach pistol in the holster
        -- player:setAttachedItem("HolsterRight", weapon);

        -- put the pistol in the hand instead
        player:setPrimaryHandItem(weapon);
    end
})

ClothingSelectionDefinitions = ClothingSelectionDefinitions or {};

ClothingSelectionDefinitions.CombatMedicVeteran = {
	Female = {
        Hat = {
            items = {"Base.Hat_Army"}
        },
        Necklace = {
            items = {"Base.Necklace_DogTag"}
        },
        Mask = {
            items = {"Base.Hat_SurgicalMask_Blue"}
        },
		Shirt = {
			items = {"Base.Shirt_CamoGreen"},
		},
        TorsoExtra = {
            items = {"Base.Vest_BulletArmy"}
        },
        Jacket = {
            items = {"Base.JacketLong_Doctor"},
        },
		Pants = {
			items = {"Base.Trousers_CamoGreen"},
		},
        Shoes = {
            items = {"Base.Shoes_ArmyBoots"}
        },
        BeltExtra = {
            items = {"Base.HolsterSimple"}
        },
        Hands = {
            items = {"Base.Gloves_Surgical"}
        }
	},
}