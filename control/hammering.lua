require "stdlib/event/event"

Event.register(defines.events.on_built_entity, function(e)
	if e.created_entity.name == "anvil" then
		e.created_entity.set_recipe("iron-crude")
	end
end)

Event.register(defines.events.on_gui_opened, function(e)
	if (e.entity or {}).name == "anvil" then
		game.players[e.player_index].opened = nil
		game.players[e.player_index].print{"messages.anvil-cannot-be-opened"}
	end
end)

Event.register(defines.events.on_player_cursor_stack_changed, function(e)
	local player = game.players[e.player_index]
	if (player.selected or {}).name ~= "anvil" then return end

	local anvil = player.selected
	local anvil_source = anvil.get_inventory(defines.inventory.assembling_machine_input)
	local hammer_count = anvil_source.remove("stone-hammer")
	if hammer_count == 0 then return end

	-- return the hammer(s) to the player
	player.insert{name = "stone-hammer", count = hammer_count}

	-- update progress
	local recipe = anvil.get_recipe()
	anvil.crafting_progress = anvil.crafting_progress + 0.34
	-- ingredients are not automatically removed when progress is artificial
	if anvil.crafting_progress >= 1 then
		for _, ingredient in ipairs(recipe.ingredients) do
			anvil_source.remove{name = ingredient.name, count = ingredient.amount}
		end
	end

	-- play hammering sound
	for _, sound in ipairs(game.surfaces["nauvis"].find_entities_filtered{name="hammer-sound"}) do
		sound.destroy()
	end
	player.surface.create_entity({
		name = "hammer-sound",
		position = player.position,
	})
end)
