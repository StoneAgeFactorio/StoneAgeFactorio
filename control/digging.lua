require "stdlib/event/event"
require "util/surface"

function apply_shovel(player, position)
	if has_obstacles_in_radius(player.surface, position, 2) then
		player.surface.play_sound{path="utility/cannot_build", position=player.position}
	else
		player.surface.create_entity{
			name = "mixing-pit",
			recipe = "clay",
			position = position,
			force = player.force,
		}
		player.surface.play_sound{path="utility/axe_mining_ore", position=player.position}
	end
end

function return_to_player(player, item_on_ground)
	player.insert(item_on_ground.stack)
	item_on_ground.stack.clear()
end

Event.register(defines.events.on_player_dropped_item, function(e)
	local dropped_item = e.entity.stack.name
	local player = game.players[e.player_index]
	local position = {e.entity.position.x, e.entity.position.y}

	if "stone-shovel" == dropped_item then
		return_to_player(player, e.entity)
		apply_shovel(player, position)
	end
end)
