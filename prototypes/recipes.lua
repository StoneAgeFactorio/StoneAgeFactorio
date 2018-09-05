data:extend({
	{
		type = "recipe",
		name = "campfire",
		ingredients = {
			{"wood-stick", 5}
			-- {"sand", 5} -- TODO: add once sand mining implemented
		},
		energy_required = 5,
		icon = "__StoneAge__/graphics/icons/campfire.png",
		icon_size = 32,
		subgroup = "raw-material",
		result = "campfire"
	},
	{
		type = "recipe",
		name = "rock-knapping",
		ingredients = {
			{"jagged-rock", 2}
		},
		energy_required = 5,
		icon = "__base__/graphics/icons/wall-remnants.png",
		icon_size = 32,
		subgroup = "raw-material",
		results = {
			{name = "jagged-rock", amount = 1, probability = 0.5},
			{name = "knapped-rock", amount = 1, probability = 0.5}
		}
	},
	{
		type = "recipe",
		name = "stone-axe",
		ingredients = {
			{"wood-stick", 1},
			{"knapped-rock", 1}
		},
		energy_required = 5,
		result = "stone-axe"
	},
	{
		type = "recipe",
		name = "wood-stick-fire-harden",
		ingredients = {
			{"wood-stick-sharp", 1}
		},
		category = "fire-crafting",
		energy_required = 5,
		icons = {
			{
				icon = "__StoneAge__/graphics/icons/wood-stick-fire-hardened.png",
				icon_size = 32,
				tint = {r = 1, g = 0.7, b = 0.2}
			}
		},
		subgroup = "raw-material",
		results = {
			{name = "wood-stick-fire-hardened", amount = 1}
		},
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.000, g = 0.680, b = 0.894, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.430, g = 0.805, b = 0.726, a = 0.000}, -- #6dcdb900
		}
	},
	{
		type = "recipe",
		name = "wood-stick-sharpen",
		ingredients = {
			{"wood-stick", 2}
		},
		energy_required = 2,
		icons = {
			{
				icon = "__StoneAge__/graphics/icons/wood-stick-sharp.png",
				icon_size = 32,
				tint = {r = 1, g = 0.7, b = 0.2}
			}
		},
		icon_size = 32,
		subgroup = "raw-material",
		results = {
			{name = "wood-stick", amount = 1, probability = 0.9},
			{name = "wood-stick-sharp", amount = 1, probability = 0.75}
		}
	}
})
