--This program was automatically written with resourceWriter.py. Do not manually modify this file.
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
			pictures = {{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-00.png",
					width = 236,
					height = 169,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-00.png",
						width = 474,
						height = 337,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-01.png",
					width = 236,
					height = 132,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-01.png",
						width = 473,
						height = 265,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-02.png",
					width = 236,
					height = 134,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-02.png",
						width = 473,
						height = 267,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-03.png",
					width = 215,
					height = 121,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-03.png",
						width = 432,
						height = 243,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-04.png",
					width = 236,
					height = 153,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-04.png",
						width = 472,
						height = 305,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-05.png",
					width = 188,
					height = 112,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-05.png",
						width = 375,
						height = 224,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-06.png",
					width = 148,
					height = 168,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-06.png",
						width = 296,
						height = 335,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-07.png",
					width = 200,
					height = 109,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-07.png",
						width = 400,
						height = 220,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-08.png",
					width = 133,
					height = 169,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-08.png",
						width = 268,
						height = 337,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-09.png",
					width = 214,
					height = 79,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-09.png",
						width = 426,
						height = 156,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-10.png",
					width = 213,
					height = 133,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-10.png",
						width = 426,
						height = 267,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-11.png",
					width = 236,
					height = 164,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-11.png",
						width = 472,
						height = 329,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-12.png",
					width = 236,
					height = 169,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-12.png",
						width = 472,
						height = 337,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-13.png",
					width = 191,
					height = 138,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-13.png",
						width = 381,
						height = 276,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-14.png",
					width = 236,
					height = 168,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-14.png",
						width = 472,
						height = 338,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-15.png",
					width = 236,
					height = 167,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-15.png",
						width = 473,
						height = 336,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-16.png",
					width = 163,
					height = 107,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-16.png",
						width = 327,
						height = 215,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-17.png",
					width = 148,
					height = 106,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-17.png",
						width = 298,
						height = 212,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-18.png",
					width = 142,
					height = 99,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-18.png",
						width = 286,
						height = 199,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-19.png",
					width = 103,
					height = 78,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-19.png",
						width = 206,
						height = 157,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-20.png",
					width = 152,
					height = 96,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-20.png",
						width = 305,
						height = 190,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-21.png",
					width = 160,
					height = 105,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-21.png",
						width = 321,
						height = 209,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-22.png",
					width = 148,
					height = 91,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-22.png",
						width = 297,
						height = 182,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-23.png",
					width = 134,
					height = 98,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-23.png",
						width = 268,
						height = 196,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-24.png",
					width = 158,
					height = 114,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-24.png",
						width = 320,
						height = 229,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-25.png",
					width = 236,
					height = 74,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-25.png",
						width = 472,
						height = 149,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-26.png",
					width = 89,
					height = 105,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-26.png",
						width = 180,
						height = 211,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-27.png",
					width = 162,
					height = 76,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-27.png",
						width = 325,
						height = 153,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-28.png",
					width = 162,
					height = 66,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-28.png",
						width = 326,
						height = 132,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-29.png",
					width = 155,
					height = 91,
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-29.png",
						width = 311,
						height = 183,
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				} }		
           },
	}
)