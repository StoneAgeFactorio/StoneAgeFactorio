require "prototypes/pipepictures"

data:extend({
	{
		type = "assembling-machine",
		name = "campfire",
		icon = "__StoneAge__/graphics/icons/campfire.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "campfire"},
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
		ingredient_count = 1,
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
	},
	{
		type = "furnace",
		name = "kiln",
		icons = {
			{
				icon = "__base__/graphics/icons/stone-furnace.png",
				icon_size = 32,
				tint = {r = 0.8, g = 1, b = 0}
			}
		},
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "kiln"},
		max_health = 100,
		corpse = "medium-remnants",
		repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
		mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
		open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
		close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
		vehicle_impact_sound = { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
		working_sound = {
			sound = { filename = "__base__/sound/furnace.ogg", }
		},
		resistances =
		{
			{
				type = "fire",
				percent = 90
			},
			{
				type = "explosion",
				percent = 30
			},
			{
				type = "impact",
				percent = 30
			}
		},
		collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
		selection_box = {{-0.8, -1}, {0.8, 1}},
		crafting_categories = {"bloomery-crafting"},
		result_inventory_size = 1,
		energy_usage = "100kW",
		crafting_speed = 1,
		source_inventory_size = 1,
		energy_source =
		{
			type = "burner",
			fuel_category = "charcoal",
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
				light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
			}
		},
		fast_replaceable_group = "furnace"
	},
	{
		type = "assembling-machine",
		name = "mixing-pit",
		icon = "__base__/graphics/icons/small-scorchmark.png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 1},
		max_health = 50,
		working_sound = {
			sound = {filename = "__base__/sound/electric-mining-drill.ogg"}
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		fast_replaceable_group = "assembling-machine",
		crafting_categories = {"soil-crafting"},
		source_inventory_size = 2,
		result_inventory_size = 1,
		ingredient_count = 1,
		energy_usage = "0.01kW",
		energy_source = {
			type = "burner",
			fuel_category = "chemical",
			effectivity = 1,
			fuel_inventory_size = 1,
			emissions = 0,
		},
		crafting_speed = 1,
		animation = { -- TODO
			layers = {
				{
					filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
					priority="high",
					width = 108,
					height = 114,
					frame_count = 32,
					line_length = 8,
					shift = util.by_pixel(0, 2),
					hr_version = {
						filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
						priority="high",
						width = 214,
						height = 226,
						frame_count = 32,
						line_length = 8,
						shift = util.by_pixel(0, 2),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
					priority="high",
					width = 95,
					height = 83,
					frame_count = 1,
					line_length = 1,
					repeat_count = 32,
					draw_as_shadow = true,
					shift = util.by_pixel(8.5, 5.5),
					hr_version = {
						filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
						priority="high",
						width = 190,
						height = 165,
						frame_count = 1,
						line_length = 1,
						repeat_count = 32,
						draw_as_shadow = true,
						shift = util.by_pixel(8.5, 5),
						scale = 0.5
					}
				}
			}
		},
		fluid_boxes = {
			{
				production_type = "input",
				pipe_picture = assembler2pipepictures(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }},
				secondary_draw_orders = { north = -1 }
			},
			off_when_no_fluid_recipe = false
		},
	},
	{
		type = "pipe",
		name = "wood-pipe",
		icons = {
			{
				icon = "__base__/graphics/icons/pipe.png",
				icon_size = 32,
				tint = {r = 1, g = 0.8, b = 0.2}
			}
		},
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "pipe"},
		max_health = 50,
		corpse = "small-remnants",
		fast_replaceable_group = "pipe",
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		fluid_box = {
			base_area = 1,
			pipe_connections = {
				{position = {0, -1}},
				{position = {1, 0}},
				{position = {0, 1}},
				{position = {-1, 0}}
			}
		},
		pictures = pipepictures(),
		working_sound = {
			sound = {
				{
					filename = "__base__/sound/pipe.ogg",
					volume = 0.85
				}
			},
			match_volume_to_activity = true,
			max_sounds_per_type = 3
		},
		horizontal_window_bounding_box = {{-0.25, -0.28125}, {0.25, 0.15625}},
		vertical_window_bounding_box = {{-0.28125, -0.5}, {0.03125, 0.125}}
	},
	{
		type = "offshore-pump",
		name = "wood-pump",
		icon = "__StoneAge__/graphics/icons/wood-pump.png",
		icon_size = 32,
		flags = {"placeable-neutral", "player-creation", "filter-directions"},
		collision_mask = {"ground-tile", "object-layer"},
		fluid_box_tile_collision_test = {"ground-tile"},
		adjacent_tile_collision_test = {"water-tile"},
		minable = {mining_time = 1, result = "wood-pump"},
		max_health = 150,
		corpse = "small-remnants",
		fuel_category = "chemical",
		fuel_value = "20MJ",
		fluid = "water",
		collision_box = {{-0.6, -1.05}, {0.6, 0.3}},
		selection_box = {{-1, -1.49}, {1, 0.49}},
		fluid_box = {
			base_area = 1,
			base_level = 1,
			production_type = "output",
			pipe_connections =
			{
				{position = {0, 1}, type = "output"}
			}
		},
		pumping_speed = 0.166667,
		tile_width = 1,
		tile_height = 1,
		picture = { -- TODO
			north = {
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {0.90625, 0.0625},
				width = 160,
				height = 102
			},
			east = {
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {0.90625, 0.0625},
				x = 160,
				width = 160,
				height = 102
			},
			south = {
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {0.90625, 0.65625},
				x = 320,
				width = 160,
				height = 102
			},
			west = {
				filename = "__base__/graphics/entity/offshore-pump/offshore-pump.png",
				priority = "high",
				shift = {1.0, 0.0625},
				x = 480,
				width = 160,
				height = 102
			}
		},
		placeable_position_visualization = {
			filename = "__core__/graphics/cursor-boxes-32x32.png",
			priority = "extra-high-no-scale",
			width = 64,
			height = 64,
			scale = 0.5,
			x = 3*64
		},
	},
})
