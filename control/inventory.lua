local Event=require("__stdlib__/stdlib/event/event")

Event.register(defines.events.on_player_created, function(e)
	--This function is supposed to clear the player's inventory upon creation'
	--Returns error for unknown reason. TODO: fix this
	--game.get_player(e.player_index).character.clear_items_inside()
end)
