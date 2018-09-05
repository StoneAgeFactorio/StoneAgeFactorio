data:extend(
	{
		{
			name = "clay-patch",
			type = "simple-entity",
			icons = {
				{
					icon = "__base__/graphics/icons/icons-new/stone.png", -- TODO
					icon_size = 32,
					tint = {r = 1, g = 0.9, b = 0.8}
				}
			},
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "grass", -- TODO
			order = "b[decorative]-l[clay-patch]", -- TODO
			collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			minable = {
				mining_time = 5,
				result = "clay", -- TODO: switch to clay-dry
				count = 1
			},
			count_as_rock_for_filtered_deconstruction = false,
			mined_sound = {filename = "__base__/sound/walking/dirt-02.ogg"}, -- TODO
			max_health = 500,
			render_layer = "decals",
			tile_layer = 59, -- under stone-path
			pictures = {
				--decalDark
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-00.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-00.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-01.png",
					width = 307,
					height = 219,
					shift = util.by_pixel(-0.5, -0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-01.png",
						width = 613,
						height = 438,
						shift = util.by_pixel(-0.25, 0),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-02.png",
					width = 307,
					height = 219,
					shift = util.by_pixel(-0.5, -0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-02.png",
						width = 612,
						height = 438,
						shift = util.by_pixel(0, 0),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-03.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-03.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-04.png",
					width = 305,
					height = 219,
					shift = util.by_pixel(-0.5, -0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-04.png",
						width = 612,
						height = 438,
						shift = util.by_pixel(0, 0),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-05.png",
					width = 306,
					height = 217,
					shift = util.by_pixel(-1, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-05.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-06.png",
					width = 307,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-06.png",
						width = 613,
						height = 434,
						shift = util.by_pixel(-0.25, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-07.png",
					width = 306,
					height = 218,
					shift = util.by_pixel(0, 1),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-07.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-08.png",
					width = 305,
					height = 218,
					shift = util.by_pixel(-0.5, 0),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-08.png",
						width = 612,
						height = 436,
						shift = util.by_pixel(0, 0.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-09.png",
					width = 306,
					height = 218,
					shift = util.by_pixel(-1, 0),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-09.png",
						width = 612,
						height = 437,
						shift = util.by_pixel(0, 0.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-10.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-10.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-11.png",
					width = 306,
					height = 217,
					shift = util.by_pixel(0, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-11.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-12.png",
					width = 306,
					height = 219,
					shift = util.by_pixel(0, -0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-12.png",
						width = 612,
						height = 439,
						shift = util.by_pixel(0, 0.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-13.png",
					width = 307,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-13.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-14.png",
					width = 306,
					height = 217,
					shift = util.by_pixel(0, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-14.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-15.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-15.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 0.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-16.png",
					width = 305,
					height = 218,
					shift = util.by_pixel(-0.5, 0),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-16.png",
						width = 612,
						height = 437,
						shift = util.by_pixel(0, 0.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-17.png",
					width = 307,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-17.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 0.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-18.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-18.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-19.png",
					width = 307,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-19.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 0.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-20.png",
					width = 305,
					height = 219,
					shift = util.by_pixel(-0.5, -0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-20.png",
						width = 612,
						height = 438,
						shift = util.by_pixel(0, 0),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-21.png",
					width = 307,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-21.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-22.png",
					width = 305,
					height = 218,
					shift = util.by_pixel(-0.5, 1),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-22.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-23.png",
					width = 306,
					height = 217,
					shift = util.by_pixel(0, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-23.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-24.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-24.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-25.png",
					width = 305,
					height = 217,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-25.png",
						width = 612,
						height = 434,
						shift = util.by_pixel(0, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-26.png",
					width = 305,
					height = 218,
					shift = util.by_pixel(-0.5, 0),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-26.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 0.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-27.png",
					width = 306,
					height = 217,
					shift = util.by_pixel(-1, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-27.png",
						width = 612,
						height = 435,
						shift = util.by_pixel(0, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-28.png",
					width = 305,
					height = 218,
					shift = util.by_pixel(-0.5, 0),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-28.png",
						width = 612,
						height = 436,
						shift = util.by_pixel(0, 0.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/dark-mud-decal/dark-mud-decal-29.png",
					width = 307,
					height = 218,
					shift = util.by_pixel(-0.5, 0),
					hr_version = {
						filename = "__base__/graphics/decorative/dark-mud-decal/hr-dark-mud-decal-29.png",
						width = 612,
						height = 436,
						shift = util.by_pixel(0, 0.5),
						scale = 0.5
					}
				}
			}
		},
		{
			name = "sandy-patch",
			type = "simple-entity",
			icons = {
				{
					icon = "__base__/graphics/icons/icons-new/stone.png",
					icon_size = 32,
					tint = {r = 1, g = 0.9, b = 0.8}
				}
			},
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "grass", -- TODO
			order = "b[decorative]-l[sand-patch]", -- TODO
			collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			minable = {
				mining_time = 5,
				result = "sand",
				count = 1
			},
			count_as_rock_for_filtered_deconstruction = false,
			mined_sound = {filename = "__base__/sound/walking/dirt-02.ogg"}, -- TODO
			max_health = 500,
			render_layer = "decals",
			tile_layer = 59, -- under stone-path
			pictures = {
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-00.png",
					width = 199,
					height = 149,
					shift = util.by_pixel(4.5, -2.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-00.png",
						width = 400,
						height = 299,
						shift = util.by_pixel(4.5, -2.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-01.png",
					width = 210,
					height = 160,
					shift = util.by_pixel(-1, 2),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-01.png",
						width = 419,
						height = 320,
						shift = util.by_pixel(-0.75, 2),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-02.png",
					width = 208,
					height = 142,
					shift = util.by_pixel(-1, 2),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-02.png",
						width = 417,
						height = 287,
						shift = util.by_pixel(-1.25, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-03.png",
					width = 211,
					height = 149,
					shift = util.by_pixel(-0.5, 5.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-03.png",
						width = 421,
						height = 298,
						shift = util.by_pixel(-0.25, 5.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-04.png",
					width = 198,
					height = 151,
					shift = util.by_pixel(6, 3.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-04.png",
						width = 396,
						height = 302,
						shift = util.by_pixel(6, 4),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-05.png",
					width = 205,
					height = 147,
					shift = util.by_pixel(-2.5, 7.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-05.png",
						width = 408,
						height = 295,
						shift = util.by_pixel(-2.5, 7.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-06.png",
					width = 208,
					height = 158,
					shift = util.by_pixel(-1, 3),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-06.png",
						width = 417,
						height = 317,
						shift = util.by_pixel(-1.25, 3.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-07.png",
					width = 209,
					height = 155,
					shift = util.by_pixel(0.5, 2.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-07.png",
						width = 419,
						height = 312,
						shift = util.by_pixel(0.75, 2.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-08.png",
					width = 206,
					height = 158,
					shift = util.by_pixel(-2, 2),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-08.png",
						width = 413,
						height = 317,
						shift = util.by_pixel(-2.25, 2.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-09.png",
					width = 201,
					height = 155,
					shift = util.by_pixel(0.5, 1.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-09.png",
						width = 403,
						height = 310,
						shift = util.by_pixel(0.25, 1.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-10.png",
					width = 206,
					height = 153,
					shift = util.by_pixel(-1, 1.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-10.png",
						width = 411,
						height = 307,
						shift = util.by_pixel(-0.75, 1.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-11.png",
					width = 210,
					height = 147,
					shift = util.by_pixel(0, -0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-11.png",
						width = 421,
						height = 295,
						shift = util.by_pixel(-0.25, -0.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-12.png",
					width = 210,
					height = 140,
					shift = util.by_pixel(-1, -7),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-12.png",
						width = 420,
						height = 280,
						shift = util.by_pixel(-0.5, -7),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-13.png",
					width = 201,
					height = 156,
					shift = util.by_pixel(0.5, 3),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-13.png",
						width = 403,
						height = 311,
						shift = util.by_pixel(0.75, 3.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-14.png",
					width = 209,
					height = 152,
					shift = util.by_pixel(0.5, 2),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-14.png",
						width = 418,
						height = 304,
						shift = util.by_pixel(0, 2),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-15.png",
					width = 199,
					height = 142,
					shift = util.by_pixel(-3.5, 6),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-15.png",
						width = 398,
						height = 284,
						shift = util.by_pixel(-3.5, 6.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-16.png",
					width = 204,
					height = 154,
					shift = util.by_pixel(4, -1),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-16.png",
						width = 406,
						height = 313,
						shift = util.by_pixel(4, 0.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-17.png",
					width = 210,
					height = 147,
					shift = util.by_pixel(1, 4.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-17.png",
						width = 420,
						height = 294,
						shift = util.by_pixel(0.5, 4.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-18.png",
					width = 189,
					height = 145,
					shift = util.by_pixel(0.5, 5.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-18.png",
						width = 379,
						height = 289,
						shift = util.by_pixel(0.25, 5.75),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-19.png",
					width = 201,
					height = 155,
					shift = util.by_pixel(-5.5, 1.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-19.png",
						width = 401,
						height = 311,
						shift = util.by_pixel(-5.25, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-20.png",
					width = 209,
					height = 158,
					shift = util.by_pixel(0.5, 1),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-20.png",
						width = 418,
						height = 315,
						shift = util.by_pixel(0.5, 1.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-21.png",
					width = 208,
					height = 157,
					shift = util.by_pixel(1, 3.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-21.png",
						width = 418,
						height = 314,
						shift = util.by_pixel(1, 3),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-22.png",
					width = 211,
					height = 135,
					shift = util.by_pixel(-0.5, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-22.png",
						width = 421,
						height = 270,
						shift = util.by_pixel(-0.25, 1),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-23.png",
					width = 202,
					height = 145,
					shift = util.by_pixel(2, -2.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-23.png",
						width = 403,
						height = 290,
						shift = util.by_pixel(2.25, -2.5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-24.png",
					width = 209,
					height = 158,
					shift = util.by_pixel(-0.5, 2),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-24.png",
						width = 418,
						height = 315,
						shift = util.by_pixel(-0.5, 2.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-25.png",
					width = 207,
					height = 155,
					shift = util.by_pixel(-2.5, 4.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-25.png",
						width = 414,
						height = 310,
						shift = util.by_pixel(-2, 4),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-26.png",
					width = 201,
					height = 154,
					shift = util.by_pixel(-3.5, 5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-26.png",
						width = 403,
						height = 306,
						shift = util.by_pixel(-3.75, 5),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-27.png",
					width = 208,
					height = 151,
					shift = util.by_pixel(1, 0.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-27.png",
						width = 416,
						height = 303,
						shift = util.by_pixel(1, 0.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-28.png",
					width = 211,
					height = 155,
					shift = util.by_pixel(-0.5, 2.5),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-28.png",
						width = 422,
						height = 311,
						shift = util.by_pixel(0, 2.25),
						scale = 0.5
					}
				},
				{
					filename = "__base__/graphics/decorative/light-mud-decal/light-mud-decal-29.png",
					width = 203,
					height = 146,
					shift = util.by_pixel(-3.5, 2),
					hr_version = {
						filename = "__base__/graphics/decorative/light-mud-decal/hr-light-mud-decal-29.png",
						width = 406,
						height = 292,
						shift = util.by_pixel(-3.5, 2),
						scale = 0.5
					}
				}
			}
		}
	}
)
