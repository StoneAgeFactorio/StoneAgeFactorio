local Event=require("__stdlib__/stdlib/event/event")
require "util/surface"

local resources = {
	{name = "dry-hairy-tree", amount = 1},
	{name = "clay-patch", min = 18, max = 26},
}

local spawn_area = {x = {-40, 40}, y = {-40, 40}}
local spawn_radius = 8

local function create_random_position(center, area)
	return {
		math.random(center.x + area.x[1], center.x + area.x[2]),
		math.random(center.y + area.y[1], center.y + area.y[2]),
	}
end

local function find_spawn_area_center(surface, center)
	for i = 1, 500, 1 do
		local position = create_random_position(center, spawn_area)
		local has_entities = has_entities_in_radius(surface, position, spawn_radius)
		local has_water = has_water_in_radius(surface, position, spawn_radius)
		if (not has_entities or i > 450) and not has_water then
			return {x = position[1], y = position[2]}
		end
	end
	-- No suitable position found in spawn area, spawn anyway
	local position = create_random_position(center, spawn_area)
	return {x = position[1], y = position[2]}
end

local function spawn_resources(player)
	local area = {x = {-spawn_radius, spawn_radius}, y = {-spawn_radius, spawn_radius}}
	for _, resource in ipairs(resources) do
		local amount = resource.amount
		if amount == nil then
			amount = math.random(resource.min, resource.max)
		end
		local area_center = find_spawn_area_center(player.surface, player.position)
		for i = 1, amount, 1 do
			local position = create_random_position(area_center, area)
			player.surface.create_entity {name = resource.name, position = position}
		end
	end
end

Event.register(defines.events.on_player_created, function(e)
	spawn_resources(game.players[e.player_index])
end)
