data:extend(
	{
		{
			type = "armor",
			name = "armor-crude",
			icon = "__StoneAge__/graphics/icons/armor.png",
			icon_size = 32,
			flags = {"goes-to-quickbar"},
			resistances = {
				{
					type = "physical",
					decrease = 2,
					percent = 10
				},
				{
					type = "acid",
					decrease = 0,
					percent = 5
				},
				{
					type = "explosion",
					decrease = 2,
					percent = 10
				},
				{
					type = "fire",
					decrease = 0,
					percent = 5
				}
			},
			durability = 800,
			subgroup = "stoneage-4",
			order = "a[armor]",
			stack_size = 10
		},
		{
			type = "mining-tool",
			name = "copper-hammer",
			icon = "__StoneAge__/graphics/icons/hammer.png",
			icon_size = 32,
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 3, type = "physical"}
					}
				}
			},
			durability = 3000,
			subgroup = "stoneage-1",
			order = "a[tools]-c[stone]",
			speed = 1.6,
			stack_size = 20
		},
		{
			type = "mining-tool",
			name = "copper-spear",
			icon = "__StoneAge__/graphics/icons/spear.png",
			icon_size = 32,
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 10, type = "physical"}
					}
				}
			},
			durability = 1000,
			speed = 1,
			subgroup = "stoneage-4",
			order = "b[weapons]",
			stack_size = 20
		},
		{
			type = "mining-tool",
			name = "stone-axe",
			icons = {
				{
					icon = "__base__/graphics/icons/iron-axe.png",
					icon_size = 32,
					tint = {r = 0.8, g = 0.7, b = 0.2}
				}
			},
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 3, type = "physical"}
					}
				}
			},
			durability = 4500,
			subgroup = "stoneage-3",
			order = "a[tools]-c[stone]",
			speed = 1.8,
			stack_size = 20
		},
		{
			type = "mining-tool",
			name = "stone-shovel",
			icon = "__StoneAge__/graphics/icons/shovel.png",
			icon_size = 32,
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 3, type = "physical"}
					}
				}
			},
			durability = 3000,
			subgroup = "stoneage-1",
			order = "a[tools]-c[stone]",
			speed = 1.8,
			stack_size = 20
		},
		{
			type = "mining-tool",
			name = "wood-stick",
			icons = {
				{
					icon = "__base__/graphics/icons/iron-stick.png",
					icon_size = 32,
					tint = {r = 1, g = 0.7, b = 0.2}
				}
			},
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 1, type = "physical"}
					}
				}
			},
			fuel_category = "chemical",
			fuel_value = "500KJ",
			durability = 500,
			subgroup = "stoneage-1",
			order = "a[tools]-a[stick]-a[stick]",
			speed = 1.1,
			stack_size = 100
		},
		{
			type = "mining-tool",
			name = "wood-stick-sharp",
			icons = {
				{
					icon = "__StoneAge__/graphics/icons/wood-stick-sharp.png",
					icon_size = 32,
					tint = {r = 1, g = 0.7, b = 0.2}
				}
			},
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 2, type = "physical"}
					}
				}
			},
			fuel_category = "chemical",
			fuel_value = "500KJ",
			durability = 600,
			subgroup = "stoneage-1",
			order = "a[tools]-a[stick]-b[sharp]",
			speed = 1.2,
			stack_size = 100
		},
		{
			type = "mining-tool",
			name = "wood-stick-fire-hardened",
			icons = {
				{
					icon = "__StoneAge__/graphics/icons/wood-stick-fire-hardened.png",
					icon_size = 32,
					tint = {r = 1, g = 0.7, b = 0.2}
				}
			},
			flags = {"goes-to-quickbar"},
			action = {
				type = "direct",
				action_delivery = {
					type = "instant",
					target_effects = {
						type = "damage",
						damage = {amount = 2, type = "physical"}
					}
				}
			},
			fuel_category = "chemical",
			fuel_value = "500KJ",
			durability = 800,
			subgroup = "stoneage-1",
			order = "a[tools]-a[stick]-c[fire-hardened]",
			speed = 1.5,
			stack_size = 100
		}
	}
)
