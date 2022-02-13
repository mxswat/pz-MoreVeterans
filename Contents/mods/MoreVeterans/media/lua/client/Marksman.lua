ProfessionFramework.addProfession('MarksmanVeteran', {
    name = "Marksman Veteran",
    icon = "profession_MarksmanVeteran",
    cost = 0,
    xp = {
        [Perks.Aiming] = 5,
        [Perks.Reloading] = 3,
        [Perks.Nimble] = 2,
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
        local rifle = player:getInventory():AddItem("Base.AssaultRifle2"); -- It's the M14
        -- InventoryItemFactory.CreateItem creates the item in memory without having it to add it to a container
        local scope = InventoryItemFactory.CreateItem("Base.IronSight");
        local recoil_pad = InventoryItemFactory.CreateItem("Base.RecoilPad");
        local laser = InventoryItemFactory.CreateItem("Base.Laser");
        rifle:attachWeaponPart(scope)
        rifle:attachWeaponPart(recoil_pad)
        rifle:attachWeaponPart(laser)

        local magazines = {
            player:getInventory():AddItem("Base.M14Clip"),
            player:getInventory():AddItem("Base.M14Clip"),
            player:getInventory():AddItem("Base.M14Clip"),
        }

        for _, magazine in pairs(magazines) do
            -- Fill all the magazines
            magazine:setCurrentAmmoCount(magazine:getMaxAmmo())
        end

        -- Use the first magazine as a reference for the max ammo
        rifle:setCurrentAmmoCount(magazines[1]:getCurrentAmmoCount())
        -- Magically make a clip appear in the gun
	    rifle:setContainsClip(true)

        -- Add an ammo box, because why not
        player:getInventory():AddItem("Base.308Box");

        -- Attach rifle to the back of the player
        player:setAttachedItem("Big Weapon On Back", rifle);
    end
})

ClothingSelectionDefinitions = ClothingSelectionDefinitions or {};

ClothingSelectionDefinitions.MarksmanVeteran = {
	Female = {
        Necklace = {
            items = {"Base.Necklace_DogTag"}
        },
		Shirt = {
			items = {"Base.Shirt_CamoGreen"},
		},
        Jacket = {
            items = {"Base.Ghillie_Top"},
        },
		Pants = {
			items = {"Base.Ghillie_Trousers"},
		},
        Shoes = {
            items = {"Base.Shoes_ArmyBoots"}
        },
        BeltExtra = {
            items = {"Base.HolsterSimple"}
        },
        AmmoStrap = {
            items = {"Base.AmmoStrap_Bullets"}
        }
	},
}