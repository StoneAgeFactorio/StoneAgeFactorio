data:extend({
	{
		type = "recipe",
		name = "basket",
		ingredients = {
			{"vines", 5}
		},
		energy_required = 4,
		icon = "__StoneAge__/graphics/icons/basket.png",
		icon_size = 32,
		subgroup = "stoneage",
		order = "b[vines]",
		result = "basket"
	},
	{
		type = "recipe",
		name = "charcoal",
		category = "charcoal-making",
		ingredients = {
			{"raw-wood", 5}
		},
		energy_required = 2,
		icons = {
			{
				icon = "__base__/graphics/icons/raw-wood.png",
				icon_size = 32,
				tint = {r = 0.1, g = 0.1, b = 0},
			},
		},
		subgroup = "stoneage",
		order = "e[clay]-d[kiln]",
		results = {{name = "charcoal", amount = 4}},
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.000, g = 0.680, b = 0.894, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.430, g = 0.805, b = 0.726, a = 0.000}, -- #6dcdb900
		}
	},
	{
		type = "recipe",
		name = "charcoal-pile",
		ingredients = {
			{"sand", 3},
		},
		energy_required = 1,
		icon = "__StoneAge__/graphics/icons/charcoal-pile.png",
		icon_size = 32,
		subgroup = "stoneage",
		order = "e[clay]-d[kiln]",
		result = "charcoal-pile"
	},
	{
		type = "recipe",
		name = "campfire",
		ingredients = {
			{"wood-stick", 5},
			{"sand", 5}
		},
		energy_required = 3,
		icon = "__StoneAge__/graphics/icons/campfire.png",
		icon_size = 32,
		subgroup = "stoneage",
		order = "c[sand]",
		result = "campfire"
	},
	{
		type = "recipe",
		name = "clay-mixing",
		category = "soil-crafting",
		icons = {
			{
				icon = "__base__/graphics/icons/fluid/steam.png",
				icon_size = 32,
				tint = {r = 1, g = 0.8, b = 0.2}
			}
		},
		ingredients = {
			{"clay-dry", 1},
			{type = "fluid", name = "water", amount = 10},
		},
		energy_required = 2,
		result = "clay",
		subgroup = "stoneage",
		order = "e[clay]-b[mixing]",
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.000, g = 0.680, b = 0.894, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.430, g = 0.805, b = 0.726, a = 0.000}, -- #6dcdb900
		}
	},
	{
		type = "recipe",
		name = "copper-axe",
		ingredients = {
			{"wood-stick", 1},
			{"copper-crude", 3},
			{"stone-hammer", 1},
		},
		energy_required = 5,
		icons = {
			{
				icon = "__base__/graphics/icons/iron-axe.png",
				icon_size = 32,
				tint = {r = 1, g = 0.5, b = 0.2}
			}
		},
		subgroup = "tool",
		order = "a[mining]-a[axe]-b[copper]",
		results = {
			{name = "copper-axe", amount = 1},
			{name = "stone-hammer", amount = 1},
		},
	},
	{
		type = "recipe",
		name = "copper-bloom",
		category = "bloomery-crafting",
		ingredients = {
			{"malachite", 2},
		},
		energy_required = 3,
		icons = {
			{
				icon = "__base__/graphics/icons/copper-ore.png",
				icon_size = 32,
				tint = {r = 0.5, g = 0.1, b = 0},
			},
		},
		subgroup = "stoneage",
		order = "f[copper]",
		result = "copper-bloom",
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.000, g = 0.680, b = 0.894, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.430, g = 0.805, b = 0.726, a = 0.000}, -- #6dcdb900
		}
	},
	{
		type = "recipe",
		name = "copper-crude",
		ingredients = {
			{"copper-bloom", 1},
			{"stone-hammer", 1},
		},
		energy_required = 2,
		icons = {
			{
				icon = "__base__/graphics/icons/copper-ore.png",
				icon_size = 32,
				tint = {r = 0.8, g = 0.8, b = 0.2},
			},
		},
		subgroup = "stoneage",
		order = "f[copper]",
		results = {
			{name = "copper-crude", amount = 1},
			{name = "stone-hammer", amount = 1},
		},
	},
	{
		type = "recipe",
		name = "grate",
		ingredients = {
			{"clay", 3}
		},
		category = "fire-crafting",
		energy_required = 5,
		icon = "__StoneAge__/graphics/icons/grate.png",
		icon_size = 32,
		subgroup = "stoneage",
		order = "e[clay]-c[grate]",
		result = "grate",
		crafting_machine_tint =
		{
			primary = {r = 0.970, g = 0.611, b = 0.000, a = 0.000}, -- #f79b0000
			secondary = {r = 0.000, g = 0.680, b = 0.894, a = 0.357}, -- #00ade45b
			tertiary = {r = 0.430, g = 0.805, b = 0.726, a = 0.000}, -- #6dcdb900
		}
	},
	{
		type = "recipe",
		name = "mixing-pit",
		ingredients = {
			{"stone-shovel", 1},
		},
		energy_required = 5,
		icon = "__base__/graphics/icons/small-scorchmark.png",
		icon_size = 32,
		subgroup = "stoneage",
		order = "c[sand]",
		results = {
			{name = "mixing-pit", amount = 1},
			{name = "stone-shovel", amount = 1},
		}
	},
	{
		type = "recipe",
		name = "kiln",
		ingredients = {
			{"campfire", 1},
			{"grate", 1},
			{"clay", 5},
		},
		energy_required = 3,
		icons = {
			{
				icon = "__base__/graphics/icons/stone-furnace.png",
				icon_size = 32,
				tint = {r = 1, g = 1, b = 0.2},
			},
		},
		subgroup = "stoneage",
		order = "e[clay]-d[kiln]",
		result = "kiln",
	},
	{
		type = "recipe",
		name = "rock-knapping",
		ingredients = {
			{"jagged-rock", 2}
		},
		energy_required = 2,
		icons = {
			{
				icon = "__base__/graphics/icons/icons-new/stone.png",
				icon_size = 32,
				tint = {r = 1, g = 0.7, b = 0.5}
			}
		},
		subgroup = "stoneage",
		order = "d[rocks]",
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
			{"knapped-rock", 1},
			{"vines", 3},
		},
		energy_required = 8,
		result = "stone-axe"
	},
	{
		type = "recipe",
		name = "stone-hammer",
		ingredients = {
			{"knapped-rock", 1},
		},
		energy_required = 5,
		result = "stone-hammer"
	},
	{
		type = "recipe",
		name = "stone-shovel",
		ingredients = {
			{"wood-stick", 1},
			{"knapped-rock", 1},
			{"vines", 3},
		},
		energy_required = 10,
		result = "stone-shovel"
	},
	{
		type = "recipe",
		name = "wood-pipe",
		ingredients = {
			{"raw-wood", 1},
			{"wood-stick", 1},
		},
		energy_required = 1,
		result = "wood-pipe",
		subgroup = "stoneage",
		order = "e[clay]-a[water]",
	},
	{
		type = "recipe",
		name = "wood-pump",
		ingredients = {
			{"raw-wood", 5},
			{"wood-stick", 5},
			{"vines", 5},
		},
		energy_required = 10,
		result = "wood-pump",
		subgroup = "stoneage",
		order = "e[clay]-a[water]",
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
		subgroup = "stoneage",
		order = "a[sticks]-c[fire-hardened]",
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
		subgroup = "stoneage",
		order = "a[sticks]-b[sharp]",
		results = {
			{name = "wood-stick", amount = 1, probability = 0.9},
			{name = "wood-stick-sharp", amount = 1, probability = 0.75}
		}
	}
})
