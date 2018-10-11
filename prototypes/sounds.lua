data:extend({
	{
		type = "explosion",
		name = "hammer-sound",
		flags = {"not-on-map"},
		animations = {
			{
				filename = "__core__/graphics/empty.png",
				priority = "low",
				width = 1,
				height = 1,
				frame_count = 1,
				line_length = 1,
				animation_speed = 1
			},
		},
		light = {intensity = 0, size = 0},
		sound = {
			{
				filename = "__StoneAge__/sound/hammer.ogg",
				volume = 0.5
			}
		}
	},
})
