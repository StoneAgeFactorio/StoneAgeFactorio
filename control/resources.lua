require "stdlib/event/event"
require "util/surface"

local resources = {
	{name = "dry-hairy-tree", amount = 1},
}

local spawn_area = {x = {-40, 40}, y = {-40, 40}}
local spawn_clearance_radius = 5

function create_random_position(center, area)
	return {
		math.random(center.x + area.x[1], center.x + area.x[2]),
		math.random(center.y + area.y[1], center.y + area.y[2]),
	}
end

function find_spawn_point(surface, center)
	for i = 1, 500, 1 do
		local position = create_random_position(center, spawn_area)
		local has_entities = has_entities_in_radius(surface, position, spawn_clearance_radius)
		local has_water = has_water_in_radius(surface, position, spawn_clearance_radius)
		if (not has_entities or i > 450) and not has_water then
			return position
		end
	end
	-- No suitable position found in spawn area, spawn anyway
	return create_random_position(center, spawn_area)
end

function spawn_resources(player)
	for _, resource in ipairs(resources) do
		for i = 1, resource.amount, 1 do
			local position = find_spawn_point(player.surface, player.position)
			player.surface.create_entity {name = resource.name, position = position}
		end
	end
end

Event.register(defines.events.on_player_created, function(e)
	spawn_resources(game.players[e.player_index])
end)
