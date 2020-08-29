local Event=require("__stdlib__/stdlib/event/event")

Event.register(defines.events.on_player_crafted_item, function(e)
	if e.recipe.name == "iron-axe-from-crude" then
		game.players[e.player_index].unlock_achievement("stoneage-conqueror")
	end
end)

Event.register(defines.events.on_entity_died, function(e)
	if not e.cause or e.cause.name ~= "player" or e.entity.type ~= "unit" then return end
	local player = e.cause.player
	local tool_inv = player.get_inventory(defines.inventory.player_tools)
	if tool_inv.is_empty() or tool_inv[1].name ~= "copper-spear" then return end
	local armor_inv = player.get_inventory(defines.inventory.player_armor)
	if not armor_inv.is_empty() and armor_inv[1].name ~= "armor-crude" then return end
	player.unlock_achievement("stoneage-warrior")
end)
