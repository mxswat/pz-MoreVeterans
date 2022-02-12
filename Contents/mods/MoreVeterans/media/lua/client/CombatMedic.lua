ProfessionFramework.addProfession('CombatMedicVeteran', {
    name = "Veteran: Combat Medic",
    icon = "profession_CombatMedicVeteran",
    cost = 2,
    xp = {
        [Perks.Doctor] = 3,
        [Perks.Aiming] = 2,
        [Perks.Reloading] = 1,
        [Perks.Nimble] = 1,
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
})

ClothingSelectionDefinitions = ClothingSelectionDefinitions or {};

ClothingSelectionDefinitions.CombatMedicVeteran = {
	Female = {
		Shirt = {
			items = {"Base.Shirt_CamoGreen"},
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
    Male = {
		Shirt = {
			items = {"Base.Shirt_CamoGreen"},
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
	}
}