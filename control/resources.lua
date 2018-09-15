require "stdlib/event/event"

local resources = {
	"dry-hairy-tree",
	"clay-patch",
	"clay-patch",
	"clay-patch",
	"clay-patch",
	"sandy-patch",
	"sandy-patch",
	"sandy-patch",
	"sandy-patch"
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
		local clearance_area = {
			{position[1] - spawn_clearance_radius, position[2] - spawn_clearance_radius},
			{position[1] + spawn_clearance_radius, position[2] + spawn_clearance_radius},
		}
		local entities = surface.find_entities(clearance_area)
		local water_count = surface.count_tiles_filtered({area = clearance_area, collision_mask = "water-tile"})
		if #entities == 0 and water_count == 0 then
			return position
		end
	end
	-- No suitable position found in spawn area, spawn anyway
	return create_random_position(center, spawn_area)
end

function spawn_resources(player)
	for _, resource in ipairs(resources) do
		local position = find_spawn_point(player.surface, player.position)
		player.surface.create_entity {name = resource, position = position}
	end
end

Event.register(defines.events.on_player_created, function(e)
	spawn_resources(game.players[e.player_index])
end)
