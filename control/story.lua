require "stdlib/event/event"

Event.register(defines.events.on_player_created, function(e)
	game.show_message_dialog{text = {"messages.stoneage-intro"}}
end)
