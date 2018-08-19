require "stdlib/event/event"

Event.register(defines.events.on_player_created, function(e)
    game.players[e.player_index].character.clear_items_inside()
end)
