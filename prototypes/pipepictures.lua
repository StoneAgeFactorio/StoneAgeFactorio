-- These were copied from the 0.15 base mod and need to be replaced in time with
-- graphics for wooden pipes.

function assembler2pipepictures()
	return {
		north = {
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-N.png",
			priority = "extra-high",
			width = 35,
			height = 18,
			shift = util.by_pixel(2.5, 14),
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-N.png",
				priority = "extra-high",
				width = 71,
				height = 38,
				shift = util.by_pixel(2.25, 13.5),
				scale = 0.5
			}
		},
		east = {
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-E.png",
			priority = "extra-high",
			width = 20,
			height = 38,
			shift = util.by_pixel(-25, 1),
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-E.png",
				priority = "extra-high",
				width = 42,
				height = 76,
				shift = util.by_pixel(-24.5, 1),
				scale = 0.5
			}
		},
		south = {
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-S.png",
			priority = "extra-high",
			width = 44,
			height = 31,
			shift = util.by_pixel(0, -31.5),
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-S.png",
				priority = "extra-high",
				width = 88,
				height = 61,
				shift = util.by_pixel(0, -31.25),
				scale = 0.5
			}
		},
		west = {
			filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-pipe-W.png",
			priority = "extra-high",
			width = 19,
			height = 37,
			shift = util.by_pixel(25.5, 1.5),
			hr_version = {
				filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-pipe-W.png",
				priority = "extra-high",
				width = 39,
				height = 73,
				shift = util.by_pixel(25.75, 1.25),
				scale = 0.5
			}
		}
	}
end

local pipe_sheet = "__StoneAge__/graphics/wood-pipes.png"
local pipe_sheet_hr = "__StoneAge__/graphics/wood-pipes-hr.png"

function pipepictures()
	return {
	  	straight_vertical_single = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 128,
				height = 128,
				x = 0,
				y = 0,
				scale = 0.5
			}
		},
		straight_vertical = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 64,
			height = 32,
			x = 0,
			y = 144,
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 128,
				height = 64,
				x = 0,
				y = 288,
				scale = 0.5
			}
		},
		straight_vertical_window = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 64,
			height = 32,
			x = 0,
			y = 112,
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 128,
				height = 64,
				x = 0,
				y = 224,
				scale = 0.5
			}
		},
		straight_horizontal_window = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 32,
			height = 64,
			x = 112,
			y = 0,
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 64,
				height = 128,
				x = 224,
				y = 0,
				scale = 0.5
			}
		},
		straight_horizontal = {
			filename = pipe_sheet_hr,
			priority = "extra-high",
			width = 32,
			height = 64,
			x = 144,
			y = 0,
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 64,
				height = 128,
				x = 288,
				y = 0,
				scale = 0.5,
			}
		},
		corner_up_right = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 48,
			x = 64,
			y = 144,
			shift = {
				x = -0.25,
				y = 0.25,
			},
			hr_version =
			{
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 96,
				x = 128,
				y = 288,
				shift = {
					x = -0.25,
					y = 0.25,
				},
				scale = 0.5
			}
		},
		corner_up_left = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 48,
			x = 144,
			y = 144,
			shift = {
				x = 0.25,
				y = 0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 96,
				x = 288,
				y = 288,
				shift = {
					x = 0.25,
					y = 0.25,
				},
				scale = 0.5
			}
		},
		corner_down_right = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 48,
			x = 64,
			y = 64,
			shift = {
				x = -0.25,
				y = -0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 96,
				x = 128,
				y = 128,
				shift = {
					x = -0.25,
					y = -0.25,
				},
				scale = 0.5
			}
		},
		corner_down_left = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 48,
			x = 144,
			y = 64,
			shift = {
				x = 0.25,
				y = -0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 96,
				x = 288,
				y = 128,
				shift = {
					x = 0.25,
					y = -0.25,
				},
				scale = 0.5
			}
		},
		t_up = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 32,
			height = 48,
			x = 112,
			y = 144,
			shift = {
				x = 0,
				y = 0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 64,
				height = 96,
				x = 224,
				y = 288,
				shift = {
					x = 0,
					y = 0.25,
				},
				scale = 0.5
			}
		},
		t_down = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 32,
			height = 48,
			x = 112,
			y = 64,
			shift = {
				x = 0,
				y = -0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 64,
				height = 96,
				x = 224,
				y = 128,
				shift = {
					x = 0,
					y = -0.25,
				},
				scale = 0.5
			}
		},
		t_right = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 32,
			x = 64,
			y = 112,
			shift = {
				x = -0.25,
				y = 0,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 64,
				x = 128,
				y = 224,
				shift = {
					x = -0.25,
					y = 0,
				},
				scale = 0.5
			}
		},
		t_left = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 32,
			x = 144,
			y = 112,
			shift = {
				x = 0.25,
				y = 0,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 64,
				x = 288,
				y = 224,
				shift = {
					x = 0.25,
					y = 0,
				},
				scale = 0.5
			}
		},
		cross = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 32,
			height = 32,
			x = 112,
			y = 112,
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 64,
				height = 64,
				x = 224,
				y = 224,
				scale = 0.5
			}
		},
		ending_up = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 64,
			height = 48,
			x = 0,
			y = 176,
			shift = {
				x = 0,
				y = 0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 128,
				height = 96,
				x = 0,
				y = 352,
				shift = {
					x = 0,
					y = 0.25,
				},
				scale = 0.5
			}
		},
		ending_down = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 64,
			height = 48,
			x = 0,
			y = 64,
			shift = {
				x = 0,
				y = -0.25,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 128,
				height = 96,
				x = 0,
				y = 128,
				shift = {
					x = 0,
					y = -0.25,
				},
				scale = 0.5
			}
		},
		ending_right = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 64,
			x = 64,
			y = 0,
			shift = {
				x = -0.25,
				y = 0,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 128,
				x = 128,
				y = 0,
				shift = {
					x = -0.25,
					y = 0,
				},
				scale = 0.5
			}
		},
		ending_left = {
			filename = pipe_sheet,
			priority = "extra-high",
			width = 48,
			height = 64,
			x = 176,
			y = 0,
			shift = {
				x = 0.25,
				y = 0,
			},
			hr_version = {
				filename = pipe_sheet_hr,
				priority = "extra-high",
				width = 96,
				height = 128,
				x = 352,
				y = 0,
				shift = {
					x = 0.25,
					y = 0,
				},
				scale = 0.5
			}
		},
		horizontal_window_background = {
			filename = "__base__/graphics/entity/pipe/pipe-horizontal-window-background.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version = {
				filename = "__base__/graphics/entity/pipe/hr-pipe-horizontal-window-background.png",
				priority = "extra-high",
				width = 128,
				height = 128,
				scale = 0.5
			}
		},
		vertical_window_background = {
			filename = "__base__/graphics/entity/pipe/pipe-vertical-window-background.png",
			priority = "extra-high",
			width = 64,
			height = 64,
			hr_version =
			{
			filename = "__base__/graphics/entity/pipe/hr-pipe-vertical-window-background.png",
			priority = "extra-high",
			width = 128,
			height = 128,
			scale = 0.5
			}
		},
		fluid_background = {
			filename = "__base__/graphics/entity/pipe/fluid-background.png",
			priority = "extra-high",
			width = 32,
			height = 20,
			hr_version = {
				filename = "__base__/graphics/entity/pipe/hr-fluid-background.png",
				priority = "extra-high",
				width = 64,
				height = 40,
				scale = 0.5
			}
		},
		low_temperature_flow = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-low-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 18
		},
		middle_temperature_flow = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-medium-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 18
		},
		high_temperature_flow = {
			filename = "__base__/graphics/entity/pipe/fluid-flow-high-temperature.png",
			priority = "extra-high",
			width = 160,
			height = 18
		},
		gas_flow = {
			filename = "__base__/graphics/entity/pipe/steam.png",
			priority = "extra-high",
			line_length = 10,
			width = 24,
			height = 15,
			frame_count = 60,
			axially_symmetrical = false,
			direction_count = 1,
			hr_version = {
				filename = "__base__/graphics/entity/pipe/hr-steam.png",
				priority = "extra-high",
				line_length = 10,
				width = 48,
				height = 30,
				frame_count = 60,
				axially_symmetrical = false,
				direction_count = 1
			}
		}
	}
end
  