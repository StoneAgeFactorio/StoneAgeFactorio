import os
#This program automatically generates a replacement for resources.lua.


file=open("resources_py.lua","w")

file.write("""local clay_tint = {r = 0.9, g = 0.5, b = 0.33}

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
			pictures = {""")
 
for i in range(30):
    if len(str(i))==1:
        j="0"+str(i)
    else:
        j=str(i)
    file.write("""{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-{0}.png",
					width = {1},
					height = {2},
					shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-{0}.png",
						width = {3},
						height = {4},
						shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				}""".format(j,))       
 
               
 
               
 
file.write(""" }		
           },
	}
)""")            

file.close()