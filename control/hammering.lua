local Event=require("__stdlib__/stdlib/event/event")

Event.register(defines.events.on_gui_opened, function(e)
	if (e.entity or {}).name == "anvil" then
		game.players[e.player_index].opened = nil
		game.players[e.player_index].print{"messages.anvil-cannot-be-opened"}
	end
end)

local last_hammer_tick = {}
local min_hammer_interval = 60
local hammer_progress_increment = 0.34

Event.register("hammer-key", function(e)
	local player = game.players[e.player_index]
	if (player.selected or {}).name ~= "anvil" then return end

	if player.get_item_count("copper-hammer") == 0 then
		player.print{"messages.anvil-no-hammer"}
		return
	end

	local anvil = player.selected
	local anvil_source = anvil.get_inventory(defines.inventory.furnace_source)
	local anvil_recipe = anvil.get_recipe()
	local ticks_since_last = e.tick - (last_hammer_tick[anvil.unit_number] or 0)
	if ticks_since_last < min_hammer_interval then return end

	if not player.can_reach_entity(anvil) or anvil_recipe == nil then
		player.surface.play_sound{path="utility/cannot_build", position=player.position}
		return
	end
	
	for _, ingredient in ipairs(anvil_recipe.ingredients) do
		if anvil_source.get_item_count(ingredient.name) < ingredient.amount then
			player.surface.play_sound{path="utility/cannot_build", position=player.position}
			return
		end
	end

	last_hammer_tick[anvil.unit_number] = e.tick
	anvil.crafting_progress = anvil.crafting_progress + hammer_progress_increment
	player.surface.create_entity({
		name = "hammer-sound",
		position = player.position,
	})

	-- ingredients are not automatically removed when progress is artificial
	if anvil.crafting_progress >= 1 then
		for _, ingredient in ipairs(anvil_recipe.ingredients) do
			anvil_source.remove{name = ingredient.name, count = ingredient.amount}
		end
	end
end)
