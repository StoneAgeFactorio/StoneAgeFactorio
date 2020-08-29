local clay_tint = {r = 0.9, g = 0.5, b = 0.33}

data:extend(
	{
		{
		  type = "noise-layer",
		  name = "clay-patch"
		},
		{
			name = "clay-patch",
			type = "simple-entity",
			icons = {
				{
					icon = "__base__/graphics/icons/fluid/steam.png",
					icon_size = 32,
					tint = {r = 1, g = 0.8, b = 0.2}
				}
			},
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "stoneage-1",
			order = "d[entities]",
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			minable = {
				mining_time = 3,
				results = {{name = "clay-dry", amount = 4}},
			},
			count_as_rock_for_filtered_deconstruction = false,
			mined_sound = {filename = "__base__/sound/walking/dirt-02.ogg"}, -- TODO
			max_health = 500,
			render_layer = "object",
			tile_layer = 65, -- over concrete
			pictures = {
				--addchole
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-00.png",
					width = 174,
					height = 134,
					shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-00.png",
						width = 351,
						height = 267,
						shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-01.png",
					width = 151,
					height = 130,
					shift = util.by_pixel(2.5, -3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-01.png",
						width = 305,
						height = 262,
						shift = util.by_pixel(2.25, -3),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-02.png",
					width = 163,
					height = 135,
					shift = util.by_pixel(-8.5, -0.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-02.png",
						width = 473,
						height = 267,
						shift = util.by_pixel(-8.25, -0.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-03.png",
					width = 127,
					height = 135,
					shift = util.by_pixel(10.5, -1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-03.png",
						width = 432,
						height = 243,
						shift = util.by_pixel(10, -1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-04.png",
					width = 114,
					height = 100,
					shift = util.by_pixel(9, 3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-04.png",
						width = 472,
						height = 305,
						shift = util.by_pixel(8.75, 3.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-05.png",
					width = 146,
					height = 116,
					shift = util.by_pixel(12, 6),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-05.png",
						width = 375,
						height = 224,
						shift = util.by_pixel(12.25, 6.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-06.png",
					width = 133,
					height = 85,
					shift = util.by_pixel(-6.5, 0.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-06.png",
						width = 296,
						height = 335,
						shift = util.by_pixel(-5.75, 0.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-07.png",
					width = 139,
					height = 118,
					shift = util.by_pixel(-1.5, 6),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-07.png",
						width = 282,
						height = 266,
						shift = util.by_pixel(-1.5, -1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-08.png",
					width = 188,
					height = 114,
					shift = util.by_pixel(0, -7),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-08.png",
						width = 377,
						height = 231,
						shift = util.by_pixel(-0.25, -7.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-09.png",
					width = 170,
					height = 100,
					shift = util.by_pixel(9, 6),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-09.png",
						width = 376,
						height = 202,
						shift = util.by_pixel(0, 6),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-10.png",
					width = 184,
					height = 116,
					shift = util.by_pixel(-1, 3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-10.png",
						width = 372,
						height = 234,
						shift = util.by_pixel(-1, 3.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-11.png",
					width = 171,
					height = 111,
					shift = util.by_pixel(-1.5, 1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-11.png",
						width = 344,
						height = 224,
						shift = util.by_pixel(-1.5, 1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-12.png",
					width = 138,
					height = 94,
					shift = util.by_pixel(-10, 4),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-12.png",
						width = 290,
						height = 189,
						shift = util.by_pixel(-8, 4.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-13.png",
					width = 159,
					height = 109,
					shift = util.by_pixel(-4.5, -3.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-13.png",
						width = 326,
						height = 228,
						shift = util.by_pixel(-3, -2),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-14.png",
					width = 153,
					height = 111,
					shift = util.by_pixel(-13.5, 4.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-14.png",
						width = 312,
						height = 225,
						shift = util.by_pixel(-13.5, 4.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-15.png",
					width = 178,
					height = 92,
					shift = util.by_pixel(-5, 4),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-15.png",
						width = 359,
						height = 186,
						shift = util.by_pixel(-4.25, 4.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-16.png",
					width = 142,
					height = 117,
					shift = util.by_pixel(11, 6.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-16.png",
						width = 287,
						height = 266,
						shift = util.by_pixel(10.75, -1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-17.png",
					width = 188,
					height = 133,
					shift = util.by_pixel(0, -1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-17.png",
						width = 377,
						height = 267,
						shift = util.by_pixel(0.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-18.png",
					width = 186,
					height = 135,
					shift = util.by_pixel(1, -1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-18.png",
						width = 375,
						height = 269,
						shift = util.by_pixel(0.25, -1.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-19.png",
					width = 171,
					height = 134,
					shift = util.by_pixel(-0.5, -1),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-19.png",
						width = 346,
						height = 270,
						shift = util.by_pixel(-0.5, -1),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-20.png",
					width = 129,
					height = 99,
					shift = util.by_pixel(-3.5, 0.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-20.png",
						width = 261,
						height = 198,
						shift = util.by_pixel(-3.25, 0.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-21.png",
					width = 134,
					height = 101,
					shift = util.by_pixel(3, -8.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-21.png",
						width = 270,
						height = 205,
						shift = util.by_pixel(2.5, -8.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-22.png",
					width = 131,
					height = 105,
					shift = util.by_pixel(-11.5, 5.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-22.png",
						width = 266,
						height = 212,
						shift = util.by_pixel(-11.5, 5.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-23.png",
					width = 145,
					height = 80,
					shift = util.by_pixel(13.5, -10),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-23.png",
						width = 292,
						height = 164,
						shift = util.by_pixel(13.5, -10.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-24.png",
					width = 188,
					height = 115,
					shift = util.by_pixel(0, 2.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-24.png",
						width = 377,
						height = 232,
						shift = util.by_pixel(-0.25, 2.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-25.png",
					width = 188,
					height = 100,
					shift = util.by_pixel(0, -3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-25.png",
						width = 376,
						height = 204,
						shift = util.by_pixel(0, -3),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-26.png",
					width = 186,
					height = 107,
					shift = util.by_pixel(-1, -12.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-26.png",
						width = 376,
						height = 214,
						shift = util.by_pixel(0, -13),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-27.png",
					width = 188,
					height = 103,
					shift = util.by_pixel(0, -5.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-27.png",
						width = 378,
						height = 209,
						shift = util.by_pixel(0, -4.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-28.png",
					width = 188,
					height = 95,
					shift = util.by_pixel(0, 3.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-28.png",
						width = 378,
						height = 198,
						shift = util.by_pixel(0, 5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-29.png",
					width = 176,
					height = 108,
					shift = util.by_pixel(6, 0),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-29.png",
						width = 352,
						height = 218,
						shift = util.by_pixel(6, 0),
						scale = 0.5,
						tint = clay_tint,
					}
				}
			}
		},
	}
)
