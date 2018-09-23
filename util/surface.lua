function has_entities_in_radius(surface, position, radius)
	local area = {
		{position[1] - radius, position[2] - radius},
		{position[1] + radius, position[2] + radius},
	}
	return surface.count_entities_filtered{area = area, limit = 1} == 1
end

function has_water_in_radius(surface, position, radius)
	local area = {
		{position[1] - radius, position[2] - radius},
		{position[1] + radius, position[2] + radius},
	}
	return surface.count_tiles_filtered{area = area, collision_mask = "water-tile", limit = 1} == 1
end
