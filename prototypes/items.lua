data:extend(
	{
		{
			type = "item",
			name = "campfire",
			icon = "__StoneAge__/graphics/icons/campfire.png",
			icon_size = 32,
			flags = {"goes-to-quickbar"},
			subgroup = "stoneage",
			order = "b[buildings]-a[campfire]",
			place_result = "campfire",
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
			flags = {"goes-to-main-inventory"},
			subgroup = "stoneage",
			order = "c[items]-c[soil]",
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
			flags = {"goes-to-main-inventory"},
			subgroup = "stoneage",
			order = "c[items]-b[rocks]-a[jagged]",
			stack_size = 50
		},
		{
			type = "item",
			name = "knapped-rock",
			icons = {
				{
					icon = "__base__/graphics/icons/icons-new/stone.png",
					icon_size = 32,
					tint = {r = 1, g = 0.7, b = 0.5}
				}
			},
			flags = {"goes-to-main-inventory"},
			subgroup = "stoneage",
			order = "c[items]-b[rocks]-b[knapped]",
			stack_size = 50
		},
		{
			type = "item",
			name = "malachite",
			icons = {
				{
					icon = "__base__/graphics/icons/copper-ore.png",
					icon_size = 32,
					tint = {r = 0.1, g = 1, b = 0.4}
				}
			},
			flags = {"goes-to-main-inventory"},
			subgroup = "stoneage",
			order = "c[items]-d[ore]-a[malachite]",
			stack_size = 50
		},
		{
			type = "item",
			name = "sand",
			icons = {
				{
					icon = "__base__/graphics/icons/wall-remnants.png",
					icon_size = 32,
					tint = {r = 1, g = 0.7, b = 0.5}
				}
			},
			flags = {"goes-to-main-inventory"},
			subgroup = "stoneage",
			order = "c[items]-c[soil]",
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
			flags = {"goes-to-main-inventory"},
			fuel_category = "chemical",
			fuel_value = "100KJ",
			subgroup = "stoneage",
			order = "c[items]-a[wood]",
			stack_size = 50
		}
	}
)
