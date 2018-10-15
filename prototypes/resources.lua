local function autoplace_settings(name, order)
	return {
		order = "a-b-"..order,
		sharpness = 15/16,
		richness_multiplier = 1000,
		coverage = 0.00000000001,
		starting_area_size = 11,
		starting_area_amount = 11,
		peaks = {
			{
				noise_layer = name,
				noise_octaves_difference = -0.85,
				noise_persistence = 0.4
			}
		},
	}
end

local clay_tint = {r = 0.9, g = 0.5, b = 0.33}
local sand_tint = {r = 1, g = 0.8, b = 0.8}

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
			autoplace = autoplace_settings("clay-patch", "h"),
			pictures = {
				--addchole
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-00.png",
					width = 174,
					height = 134,
					shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-00.png",
						width = 351,
						height = 267,
						shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-01.png",
					width = 151,
					height = 130,
					shift = util.by_pixel(2.5, -3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-01.png",
						width = 305,
						height = 262,
						shift = util.by_pixel(2.25, -3),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-02.png",
					width = 163,
					height = 135,
					shift = util.by_pixel(-8.5, -0.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-02.png",
						width = 327,
						height = 270,
						shift = util.by_pixel(-8.25, -0.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-03.png",
					width = 127,
					height = 135,
					shift = util.by_pixel(10.5, -1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-03.png",
						width = 258,
						height = 268,
						shift = util.by_pixel(10, -1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-04.png",
					width = 114,
					height = 100,
					shift = util.by_pixel(9, 3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-04.png",
						width = 231,
						height = 201,
						shift = util.by_pixel(8.75, 3.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-05.png",
					width = 146,
					height = 116,
					shift = util.by_pixel(12, 6),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-05.png",
						width = 295,
						height = 234,
						shift = util.by_pixel(12.25, 6.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-06.png",
					width = 133,
					height = 85,
					shift = util.by_pixel(-6.5, 0.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-06.png",
						width = 271,
						height = 172,
						shift = util.by_pixel(-5.75, 0.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-07.png",
					width = 139,
					height = 118,
					shift = util.by_pixel(-1.5, 6),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-07.png",
						width = 282,
						height = 266,
						shift = util.by_pixel(-1.5, -1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-08.png",
					width = 188,
					height = 114,
					shift = util.by_pixel(0, -7),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-08.png",
						width = 377,
						height = 231,
						shift = util.by_pixel(-0.25, -7.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-09.png",
					width = 170,
					height = 100,
					shift = util.by_pixel(9, 6),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-09.png",
						width = 376,
						height = 202,
						shift = util.by_pixel(0, 6),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-10.png",
					width = 184,
					height = 116,
					shift = util.by_pixel(-1, 3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-10.png",
						width = 372,
						height = 234,
						shift = util.by_pixel(-1, 3.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-11.png",
					width = 171,
					height = 111,
					shift = util.by_pixel(-1.5, 1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-11.png",
						width = 344,
						height = 224,
						shift = util.by_pixel(-1.5, 1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-12.png",
					width = 138,
					height = 94,
					shift = util.by_pixel(-10, 4),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-12.png",
						width = 290,
						height = 189,
						shift = util.by_pixel(-8, 4.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-13.png",
					width = 159,
					height = 109,
					shift = util.by_pixel(-4.5, -3.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-13.png",
						width = 326,
						height = 228,
						shift = util.by_pixel(-3, -2),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-14.png",
					width = 153,
					height = 111,
					shift = util.by_pixel(-13.5, 4.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-14.png",
						width = 312,
						height = 225,
						shift = util.by_pixel(-13.5, 4.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-15.png",
					width = 178,
					height = 92,
					shift = util.by_pixel(-5, 4),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-15.png",
						width = 359,
						height = 186,
						shift = util.by_pixel(-4.25, 4.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-16.png",
					width = 142,
					height = 117,
					shift = util.by_pixel(11, 6.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-16.png",
						width = 287,
						height = 266,
						shift = util.by_pixel(10.75, -1.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-17.png",
					width = 188,
					height = 133,
					shift = util.by_pixel(0, -1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-17.png",
						width = 377,
						height = 267,
						shift = util.by_pixel(0.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-18.png",
					width = 186,
					height = 135,
					shift = util.by_pixel(1, -1.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-18.png",
						width = 375,
						height = 269,
						shift = util.by_pixel(0.25, -1.25),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-19.png",
					width = 171,
					height = 134,
					shift = util.by_pixel(-0.5, -1),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-19.png",
						width = 346,
						height = 270,
						shift = util.by_pixel(-0.5, -1),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-20.png",
					width = 129,
					height = 99,
					shift = util.by_pixel(-3.5, 0.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-20.png",
						width = 261,
						height = 198,
						shift = util.by_pixel(-3.25, 0.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-21.png",
					width = 134,
					height = 101,
					shift = util.by_pixel(3, -8.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-21.png",
						width = 270,
						height = 205,
						shift = util.by_pixel(2.5, -8.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-22.png",
					width = 131,
					height = 105,
					shift = util.by_pixel(-11.5, 5.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-22.png",
						width = 266,
						height = 212,
						shift = util.by_pixel(-11.5, 5.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-23.png",
					width = 145,
					height = 80,
					shift = util.by_pixel(13.5, -10),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-23.png",
						width = 292,
						height = 164,
						shift = util.by_pixel(13.5, -10.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-24.png",
					width = 188,
					height = 115,
					shift = util.by_pixel(0, 2.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-24.png",
						width = 377,
						height = 232,
						shift = util.by_pixel(-0.25, 2.5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-25.png",
					width = 188,
					height = 100,
					shift = util.by_pixel(0, -3),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-25.png",
						width = 376,
						height = 204,
						shift = util.by_pixel(0, -3),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-26.png",
					width = 186,
					height = 107,
					shift = util.by_pixel(-1, -12.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-26.png",
						width = 376,
						height = 214,
						shift = util.by_pixel(0, -13),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-27.png",
					width = 188,
					height = 103,
					shift = util.by_pixel(0, -5.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-27.png",
						width = 378,
						height = 209,
						shift = util.by_pixel(0, -4.75),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-28.png",
					width = 188,
					height = 95,
					shift = util.by_pixel(0, 3.5),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-28.png",
						width = 378,
						height = 198,
						shift = util.by_pixel(0, 5),
						scale = 0.5,
						tint = clay_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/concrete-hole-decal/concrete-hole-decal-29.png",
					width = 176,
					height = 108,
					shift = util.by_pixel(6, 0),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/concrete-hole-decal/hr-concrete-hole-decal-29.png",
						width = 352,
						height = 218,
						shift = util.by_pixel(6, 0),
						scale = 0.5,
						tint = clay_tint,
					}
				}
			}
		},
		{
		  type = "noise-layer",
		  name = "sandy-patch"
		},
		{
			name = "sandy-patch",
			type = "simple-entity",
			icons = {
				{
					icon = "__base__/graphics/icons/icons-new/stone.png",
					icon_size = 32,
					tint = {r = 2, g = 1.9, b = 1.8}
				}
			},
			flags = {"placeable-neutral", "not-on-map"},
			subgroup = "stoneage-1",
			order = "d[entities]",
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			minable = {
				mining_time = 1,
				result = "sand",
			},
			count_as_rock_for_filtered_deconstruction = false,
			mined_sound = {filename = "__base__/sound/walking/dirt-02.ogg"}, -- TODO
			max_health = 500,
			render_layer = "object",
			tile_layer = 65, -- over concrete
			autoplace = autoplace_settings("sandy-patch", "i"),
			pictures =  {
			  --dune
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-00.png",
					width = 105,
					height = 84,
					shift = util.by_pixel(-8.5, 0),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-00.png",
						width = 212,
						height = 168,
						shift = util.by_pixel(-8, 0),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-01.png",
					width = 88,
					height = 73,
					shift = util.by_pixel(-3, -3.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-01.png",
						width = 211,
						height = 148,
						shift = util.by_pixel(5.75, -3.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-02.png",
					width = 130,
					height = 91,
					shift = util.by_pixel(3, 1.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-02.png",
						width = 260,
						height = 184,
						shift = util.by_pixel(3, 1),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-03.png",
					width = 61,
					height = 90,
					shift = util.by_pixel(0.5, 2),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-03.png",
						width = 129,
						height = 181,
						shift = util.by_pixel(0.75, 1.75),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-04.png",
					width = 95,
					height = 92,
					shift = util.by_pixel(-3.5, -1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-04.png",
						width = 196,
						height = 184,
						shift = util.by_pixel(-3.5, -1.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-05.png",
					width = 107,
					height = 92,
					shift = util.by_pixel(-1.5, -1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-05.png",
						width = 215,
						height = 184,
						shift = util.by_pixel(-1.25, -1),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-06.png",
					width = 108,
					height = 89,
					shift = util.by_pixel(6, 4.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-06.png",
						width = 218,
						height = 179,
						shift = util.by_pixel(6.5, 4.25),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-07.png",
					width = 125,
					height = 91,
					shift = util.by_pixel(17.5, 3.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-07.png",
						width = 250,
						height = 183,
						shift = util.by_pixel(17.5, 3.25),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-08.png",
					width = 130,
					height = 86,
					shift = util.by_pixel(5, 1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-08.png",
						width = 260,
						height = 176,
						shift = util.by_pixel(5, 0.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-09.png",
					width = 129,
					height = 92,
					shift = util.by_pixel(-5.5, -1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-09.png",
						width = 260,
						height = 184,
						shift = util.by_pixel(-5.5, -1),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-10.png",
					width = 115,
					height = 91,
					shift = util.by_pixel(-14.5, 1.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-10.png",
						width = 233,
						height = 183,
						shift = util.by_pixel(-13.75, 1.25),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-11.png",
					width = 85,
					height = 92,
					shift = util.by_pixel(-9.5, 2),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-11.png",
						width = 172,
						height = 184,
						shift = util.by_pixel(-9.5, 2),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-12.png",
					width = 129,
					height = 82,
					shift = util.by_pixel(2.5, -7),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-12.png",
						width = 260,
						height = 166,
						shift = util.by_pixel(2.5, -6.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-13.png",
					width = 129,
					height = 85,
					shift = util.by_pixel(4.5, -0.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-13.png",
						width = 259,
						height = 172,
						shift = util.by_pixel(4.75, -1),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-14.png",
					width = 98,
					height = 92,
					shift = util.by_pixel(-3, -2),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-14.png",
						width = 199,
						height = 184,
						shift = util.by_pixel(-2.25, -2),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-15.png",
					width = 104,
					height = 92,
					shift = util.by_pixel(9, -3),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-15.png",
						width = 214,
						height = 184,
						shift = util.by_pixel(8.5, -3),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-16.png",
					width = 80,
					height = 91,
					shift = util.by_pixel(-8, -4.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-16.png",
						width = 162,
						height = 182,
						shift = util.by_pixel(-8, -4.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-17.png",
					width = 110,
					height = 76,
					shift = util.by_pixel(-3, 0),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-17.png",
						width = 222,
						height = 153,
						shift = util.by_pixel(-3, -0.25),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-18.png",
					width = 122,
					height = 92,
					shift = util.by_pixel(4, -3),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-18.png",
						width = 247,
						height = 184,
						shift = util.by_pixel(4.25, -2.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-19.png",
					width = 103,
					height = 92,
					shift = util.by_pixel(-6.5, -3),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-19.png",
						width = 211,
						height = 184,
						shift = util.by_pixel(-5.75, -3),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-20.png",
					width = 121,
					height = 91,
					shift = util.by_pixel(-0.5, 2.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-20.png",
						width = 248,
						height = 183,
						shift = util.by_pixel(-1.5, 2.25),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-21.png",
					width = 87,
					height = 91,
					shift = util.by_pixel(6.5, 1.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-21.png",
						width = 176,
						height = 184,
						shift = util.by_pixel(6.5, 1.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-22.png",
					width = 104,
					height = 92,
					shift = util.by_pixel(9, -2),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-22.png",
						width = 208,
						height = 185,
						shift = util.by_pixel(9, -1.75),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-23.png",
					width = 113,
					height = 91,
					shift = util.by_pixel(-3.5, -1.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-23.png",
						width = 227,
						height = 184,
						shift = util.by_pixel(-3.75, -1.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-24.png",
					width = 78,
					height = 92,
					shift = util.by_pixel(5, -1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-24.png",
						width = 158,
						height = 186,
						shift = util.by_pixel(4.5, -1),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-25.png",
					width = 129,
					height = 91,
					shift = util.by_pixel(1.5, -1.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-25.png",
						width = 260,
						height = 184,
						shift = util.by_pixel(1.5, -1.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-26.png",
					width = 66,
					height = 92,
					shift = util.by_pixel(-1, -1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-26.png",
						width = 134,
						height = 184,
						shift = util.by_pixel(-0.5, -1),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-27.png",
					width = 63,
					height = 82,
					shift = util.by_pixel(26.5, 1),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-27.png",
						width = 127,
						height = 165,
						shift = util.by_pixel(26.25, 1.25),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-28.png",
					width = 129,
					height = 79,
					shift = util.by_pixel(-2.5, -4.5),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-28.png",
						width = 258,
						height = 158,
						shift = util.by_pixel(-2.5, -4.5),
						scale = 0.5,
						tint = sand_tint,
					}
				},
				{
					filename = "__base__/graphics/decorative/sand-dune-decal/sand-dune-decal-29.png",
					width = 89,
					height = 92,
					shift = util.by_pixel(-3.5, -2),
					tint = sand_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/sand-dune-decal/hr-sand-dune-decal-29.png",
						width = 180,
						height = 184,
						shift = util.by_pixel(-3.5, -2),
						scale = 0.5,
						tint = sand_tint,
					}
				}
			}
		}
	}
)
