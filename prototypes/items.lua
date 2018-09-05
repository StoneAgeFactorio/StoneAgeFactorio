data:extend(
	{
		{
			type = "item",
			name = "campfire",
			icon = "__StoneAge__/graphics/icons/campfire.png",
			icon_size = 32,
			flags = {"goes-to-quickbar"},
			subgroup = "smelting-machine",
			order = "a[stone-furnace]",
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
			subgroup = "raw-resource",
			order = "c[soil]",
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
			subgroup = "raw-resource",
			order = "d[jagged-rock]",
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
			subgroup = "raw-resource",
			order = "d[knapped-rock]",
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
			subgroup = "raw-resource",
			order = "c[soil]",
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
			subgroup = "raw-resource",
			order = "b[tree]",
			stack_size = 50
		}
	}
)
