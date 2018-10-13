require "stdlib/event/event"
require "util/surface"

Event.register(defines.events.on_player_dropped_item, function(e)
	local dropped_item = e.entity.stack.name
	if "stone-shovel" ~= dropped_item then return end

	local player = game.players[e.player_index]
	local position = {e.entity.position.x, e.entity.position.y}

	player.insert(e.entity.stack)
	e.entity.stack.clear()

	if not player.can_place_entity{name = "mixing-pit", position = position} then
		player.surface.play_sound{path = "utility/cannot_build", position = player.position}
		return
	end

	player.surface.create_entity{
		name = "mixing-pit",
		position = position,
		force = player.force,
	}
	player.surface.create_entity({
		name = "shovel-sound",
		position = player.position,
	})
end)
