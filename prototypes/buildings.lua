data:extend({
	{
		type = "furnace",
		name = "campfire",
		icon = "__StoneAge__/graphics/icons/campfire.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "wood-stick"},
		max_health = 50,
		corpse = "medium-remnants",
		repair_sound = {filename = "__base__/sound/manual-repair-simple.ogg"},
		mined_sound = {filename = "__base__/sound/wooden-chest-close.ogg"},
		working_sound = {
			sound = {filename = "__base__/sound/boiler.ogg"}
		},
		resistances = {
			{
				type = "fire",
				percent = 100
			}
		},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-0.8, -1}, {0.8, 1}},
		crafting_categories = {"fire-crafting"},
		result_inventory_size = 1,
		energy_usage = "50kW",
		crafting_speed = 0.5,
		source_inventory_size = 1,
		energy_source = {
			type = "burner",
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions = 0.01,
			smoke = {
				{
					name = "smoke",
					deviation = {0.1, 0.1},
					frequency = 5,
					position = {0.0, -0.8},
					starting_vertical_speed = 0.08,
					starting_frame_deviation = 60
				}
			}
		},
		animation = { -- TODO
			layers = {
				{
					filename = "__base__/graphics/entity/stone-furnace/stone-furnace.png",
					priority = "extra-high",
					width = 81,
					height = 64,
					frame_count = 1,
					shift = {0.515625, 0.0625},
					hr_version = {
						filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace.png",
						priority = "extra-high",
						width = 151,
						height = 146,
						frame_count = 1,
						shift = util.by_pixel(-0.25, 6),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/stone-furnace/stone-furnace-shadow.png",
					priority = "extra-high",
					width = 81,
					height = 64,
					frame_count = 1,
					draw_as_shadow = true,
					shift = {0.515625, 0.0625},
					hr_version = {
						filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-shadow.png",
						priority = "extra-high",
						width = 164,
						height = 74,
						frame_count = 1,
						draw_as_shadow = true,
						shift = util.by_pixel(14.5, 13),
						scale = 0.5
					}
				}
			}
		},
		working_visualisations = {
			{
				north_position = {0.0, 0.0},
				east_position = {0.0, 0.0},
				south_position = {0.0, 0.0},
				west_position = {0.0, 0.0},
				animation = {
					filename = "__base__/graphics/entity/stone-furnace/stone-furnace-fire.png",
					priority = "extra-high",
					line_length = 8,
					width = 20,
					height = 49,
					frame_count = 48,
					axially_symmetrical = false,
					direction_count = 1,
					shift = util.by_pixel(2, 5.5),
					hr_version = {
						filename = "__base__/graphics/entity/stone-furnace/hr-stone-furnace-fire.png",
						priority = "extra-high",
						line_length = 8,
						width = 41,
						height = 100,
						frame_count = 48,
						axially_symmetrical = false,
						direction_count = 1,
						shift = util.by_pixel(-0.75, 5.5),
						scale = 0.5
					}
				},
				light = {intensity = 1, size = 1, color = {r = 1.0, g = 1.0, b = 1.0}}
			}
		},
		fast_replaceable_group = "furnace"
	}
})
