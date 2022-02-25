ProfessionFramework.addProfession('CIAVeteran', {
    name = "CIA Veteran",
    icon = "profession_CIAVeteran",
    cost = -6,
    xp = {
        [Perks.Aiming] = 3,
        [Perks.Reloading] = 3,
        [Perks.Nimble] = 3,
        [Perks.Sneak] = 6,
    },
    clothing = {
        -- not working with the current version of the Profession Framework on steam. as date 02-JAN-2022
    },
    traits = {
        'Desensitized',
        'Graceful2',
        'Inconspicuous2'
    },
    inventory = {
        ["Base.WristWatch_Right_ClassicMilitary"] = 1,
    },
    OnNewGame = function (player, square, profession)
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
        player:setAttachedItem("Holster Right", weapon);
        -- Force the weapon to be in the holster slot
        weapon:setAttachedSlot(2);
    end
})

ClothingSelectionDefinitions = ClothingSelectionDefinitions or {};

ClothingSelectionDefinitions.CIAVeteran = {
	Female = {
        Hat = {
            items = {"Base.Hat_NBCmask"}
        },
        Necklace = {
            items = {"Base.Necklace_DogTag"}
        },
		Shirt = {
			items = {"Base.Shirt_CamoUrban"},
		},
        TorsoExtra = {
            items = {"Base.Vest_BulletArmy"}
        },
		Pants = {
			items = {"Base.Trousers_CamoUrban"},
		},
        Shoes = {
            items = {"Base.Shoes_ArmyBoots"}
        },
        BeltExtra = {
            items = {"Base.HolsterDouble"}
        },
        Hands = {
            items = {"Base.Gloves_LeatherGloves"}
        }
	},
}