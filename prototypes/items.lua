data:extend(
	{
		{
			type = "item",
			name = "anvil",
			icon = "__StoneAge__/graphics/icons/anvil.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-3",
			order = "b[buildings]-e[anvil]",
			place_result = "anvil",
			stack_size = 50
		},
		{
			type = "item",
			name = "campfire",
			icon = "__StoneAge__/graphics/icons/campfire.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-1",
			order = "b[buildings]-a[campfire]",
			place_result = "campfire",
			stack_size = 50
		},
		{
			type = "item",
			name = "charcoal",
			icons = {
				{
					icon = "__base__/graphics/icons/wood.png",
					icon_size = 32,
					tint = {r = 0.1, g = 0.1, b = 0},
				},
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-e[charcoal]",
			stack_size = 50,
			fuel_category = "charcoal",
			fuel_value = "6MJ",
		},
		{
			type = "item",
			name = "charcoal-pile",
			icon = "__StoneAge__/graphics/icons/charcoal-pile.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-3",
			order = "b[buildings]-d[kiln]",
			place_result = "charcoal-pile",
			stack_size = 50,
		},
		{
			type = "item",
			name = "clay-dry",
			icons = {
				{
					icon = "__base__/graphics/icons/fluid/steam.png",
					icon_size = 32,
					tint = {r = 1, g = 0.8, b = 0.2}
				}
			},
			flags = {},
			subgroup = "stoneage-2",
			order = "c[items]-c[soil]",
			stack_size = 50
		},
		{
			type = "item",
			name = "clay",
			icons = {
				{
					icon = "__base__/graphics/icons/fluid/steam.png",
					icon_size = 32,
					tint = {r = 1, g = 0.6, b = 0.5}
				}
			},
			flags = {},
			subgroup = "stoneage-2",
			order = "c[items]-c[soil]",
			stack_size = 50
		},
		{
			type = "item",
			name = "clay-container-empty",
			icon = "__StoneAge__/graphics/icons/clay-container-empty.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			stack_size = 2
		},
		{
			type = "item",
			name = "clay-container-water",
			icon = "__StoneAge__/graphics/icons/clay-container.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			stack_size = 2
		},
		{
			type = "item",
			name = "copper-crude",
			icons = {
				{
					icon = "__base__/graphics/icons/copper-ore.png",
					icon_size = 64,
					tint = {r = 0.8, g = 0.8, b = 0.2},
				},
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-f[metal]-a[copper]",
			stack_size = 50,
		},
		{
			type = "item",
			name = "iron-bloom",
			icons = {
				{
					icon = "__base__/graphics/icons/iron-ore.png",
					icon_size = 64,
					tint = {r = 0.5, g = 0.1, b = 0},
				},
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-f[metal]-b[iron]",
			stack_size = 50,
		},
		{
			type = "item",
			name = "iron-crude",
			icons = {
				{
					icon = "__base__/graphics/icons/iron-ore.png",
					icon_size = 64,
					tint = {r = 1, g = 1, b = 0.8},
				},
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-f[iron]",
			stack_size = 50,
		},
		{
			type = "item",
			name = "grate",
			icon = "__StoneAge__/graphics/icons/grate.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-d[clay]-a[grate]",
			stack_size = 50
		},
		{
			type = "item",
			name = "jagged-rock",
			icons = {
				{
					icon = "__base__/graphics/icons/sulfur.png",
					icon_size = 32,
					tint = {r = 1, g = 0.6, b = 0.2}
				}
			},
			flags = {},
			subgroup = "stoneage-1",
			order = "c[items]-b[rocks]-a[jagged]",
			stack_size = 50
		},
		{
			type = "item",
			name = "kiln",
			icons = {
				{
					icon = "__base__/graphics/icons/stone-furnace.png",
					icon_size = 32,
					tint = {r = 0.5, g = 1, b = 0}
				}
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "b[buildings]-d[kiln]",
			place_result = "kiln",
			stack_size = 50
		},
		{
			type = "item",
			name = "knapped-rock",
			icons = {
				{
					icon = "__base__/graphics/icons/stone.png",
					icon_size = 32,
					tint = {r = 1, g = 0.7, b = 0.5}
				}
			},
			flags = {},
			subgroup = "stoneage-1",
			order = "c[items]-b[rocks]-b[knapped]",
			stack_size = 50
		},
		{
			type = "item",
			name = "magnetite-flakes",
			icons = {
				{
					icon = "__base__/graphics/icons/iron-ore.png",
					icon_size = 64,
					tint = {r = 1, g = 0.4, b = 0}
				}
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-e[ore]-b[magnetite]",
			stack_size = 50
		},
		{
			type = "item",
			name = "malachite-flakes",
			icons = {
				{
					icon = "__base__/graphics/icons/copper-ore.png",
					icon_size = 64,
					tint = {r = 0.1, g = 1, b = 0.4},
				}
			},
			flags = {},
			subgroup = "stoneage-3",
			order = "c[items]-e[ore]-a[malachite]",
			stack_size = 50
		},
		{
			type = "item",
			name = "mixing-pit",
			icon = "__base__/graphics/icons/small-scorchmark.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-b[soil]",
			place_result = "mixing-pit",
			stack_size = 50
		},
		{
			type = "item",
			name = "vines",
			icons = {
				{
					icon = "__base__/graphics/icons/red-wire.png",
					icon_size = 32,
					tint = {r = 0.5, g = 0.9, b = 0.5}
				}
			},
			flags = {},
			fuel_category = "chemical",
			fuel_value = "100KJ",
			subgroup = "stoneage-1",
			order = "c[items]-a[wood]",
			stack_size = 50
		},
		{
			type = "item",
			name = "wood-pipe",
			icon = "__StoneAge__/graphics/icons/wood-pipe.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			place_result = "wood-pipe",
			fuel_category = "chemical",
			fuel_value = "500KJ",
			stack_size = 100
		},
		{
			type = "item",
			name = "wood-pump",
			icon = "__StoneAge__/graphics/icons/wood-pump.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			place_result = "wood-pump",
			fuel_category = "chemical",
			fuel_value = "4MJ",
			stack_size = 50
		},
		{
			type = "item",
			name = "wood-reservoir",
			icon = "__StoneAge__/graphics/icons/wood-reservoir.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			place_result = "wood-reservoir",
			fuel_category = "chemical",
			fuel_value = "2MJ",
			stack_size = 50
		},
		{
			type = "item",
			name = "wood-container-empty",
			icon = "__StoneAge__/graphics/icons/wood-container-empty.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			fuel_category = "chemical",
			fuel_value = "100KJ",
			stack_size = 2
		},
		{
			type = "item",
			name = "wood-container-water",
			icon = "__StoneAge__/graphics/icons/wood-container.png",
			icon_size = 32,
			flags = {},
			subgroup = "stoneage-2",
			order = "b[buildings]-c[water]",
			stack_size = 2
		},
	}
)
