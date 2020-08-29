#This program automatically generates a replacement for resources.lua.
#File locations may need to be adapted for use on other computers.
#Image reading code is based on https://note.nkmk.me/en/python-numpy-image-processing/
#By Nicholas Gower

import os
from PIL import Image
import numpy as np
import string


file=open("resources_py.lua","w")
file.write("--This program was automatically written with resourceWriter.py. Do not manually modify this file.\n")
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
os.chdir("E:\SteamLibrary\steamapps\common\Factorio\data\\base\graphics\decorative\puberty-decal")
for i in range(30):
    if len(str(i))==1:
        j="0"+str(i)
    else:
        j=str(i)
    image=np.array(Image.open("puberty-decal-{}.png".format(j)))
    image_hr=np.array(Image.open("hr-puberty-decal-{}.png".format(j)))
    print(image.shape)
    print(image_hr.shape)
    sprite=string.Template("""{
					filename = "__base__/graphics/decorative/puberty-decal/puberty-decal-${num}.png",
					width = ${a},
					height = ${b},
					--shift = util.by_pixel(5, -2),
					tint = clay_tint,
					hr_version = {
						filename = "__base__/graphics/decorative/puberty-decal/hr-puberty-decal-${num}.png",
						width = ${c},
						height = ${d},
						--shift = util.by_pixel(4.25, -1.75),
						scale = 0.5,
						tint = clay_tint,
					}
				}""")
    
    
    file.write(sprite.substitute(num=j,a=image.shape[1],b=image.shape[0],c=image_hr.shape[1],d=image_hr.shape[0]))       
    if i!=29:
        file.write(",")
               
 
               
 
file.write(""" }		
           },
	}
)""")            

file.close()