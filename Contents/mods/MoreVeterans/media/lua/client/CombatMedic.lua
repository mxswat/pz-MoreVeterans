ProfessionFramework.addProfession('CombatMedicVeteran', {
    name = "Combat Medic Veteran",
    icon = "profession_CombatMedicVeteran",
    cost = 0,
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
        ["Base.FirstAidKit"] = 1,
    },
})

ClothingSelectionDefinitions = ClothingSelectionDefinitions or {};

ClothingSelectionDefinitions.CombatMedicVeteran = {
	Female = {
        Necklace = {
            items = {"Base.Necklace_DogTag"}
        },
        Mask = {
            items = {"Base.Hat_SurgicalMask_Blue"}
        },
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
}