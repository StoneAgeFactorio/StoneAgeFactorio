require "stdlib/event/event"
require "stdlib/entity/entity"
require "stdlib/string"

function allow_mining(minable, type, matcher)
	for _, entity in ipairs(game.surfaces["nauvis"].find_entities_filtered{type = type}) do
		if matcher == nil or matcher(entity) then
			entity.minable = minable
		end
	end
end

function allow_resource_mining(minable)
	allow_mining(minable, "resource")
end

function allow_copper_mining(minable)
	allow_mining(minable, "resource", function(e) return e.name == "copper" end)
end

function allow_stone_mining(minable)
	allow_mining(minable, "resource", function(e) return e.name == "stone" end)
end

function allow_clay_mining(minable)
	allow_mining(minable, "simple-entity", function(e) return e.name == "clay-patch" end)
end

function allow_sand_mining(minable)
	allow_mining(minable, "simple-entity", function(e) return e.name == "sandy-patch" end)
end

function allow_rock_mining(minable)
	allow_mining(minable, "simple-entity", function(e)
		return e.prototype.count_as_rock_for_filtered_deconstruction
	end)
end

function allow_life_tree_mining(minable)
	allow_mining(minable, "tree", function(e)
		return not string.contains(e.prototype.order, "dead%-tree")
	end)
end

function set_allowed_mining(types)
	allow_resource_mining(types["resources"] == true)
	allow_copper_mining(types["copper"] == true)
	allow_stone_mining(types["stone"] == true)
	allow_clay_mining(types["clay"] == true)
	allow_sand_mining(types["sand"] == true)
	allow_rock_mining(types["rock"] == true)
	allow_life_tree_mining(types["life_tree"] == true)
end

function reset_yields()
	Event.register(defines.events.on_player_mined_entity, nil)
	Event.register(defines.events.on_player_mined_item, nil)
end

-- This is a workaround to override the yield of resources that do not trigger
-- the on_player_mined_entity event. This will be fixed in 0.17. See:
-- https://forums.factorio.com/viewtopic.php?f=25&t=62285
function override_item_yield(matcher, yield)
	Event.register(
		defines.events.on_player_mined_item,
		function(e)
			if matcher(e.item_stack) then
				game.players[e.player_index].remove_item(e.item_stack)
				game.players[e.player_index].insert(yield)
			end
		end
	)
end

function override_entity_yield(matcher, yield)
	Event.register(defines.events.on_player_mined_entity, function(e)
		if matcher(e.entity) then
			local items = yield
			if type(yield) == "function" then
				items = yield(e.buffer)
			end
			e.buffer.clear()
			for _, item in ipairs(items) do
				e.buffer.insert(item)
			end
		end
	end)
end

function override_stone_yield(yield)
	override_item_yield(function(i) return i.name == "stone" end, yield)
end

function override_tree_yield(yield)
	override_entity_yield(function(e) return e.type == "tree" end, function(original_yield)
		if original_yield[1].count == 2 then
			return yield
		else
			double_yield = {}
			for k, item in ipairs(yield) do
				double_yield[k] = {name = item.name, count = item.count * 2}
			end
			return double_yield
		end
	end)
end

function override_dead_tree_yield(yield)
	override_entity_yield(function(e) 
		return e.type == "tree" and string.contains(e.prototype.order, "dead-tree")
	end, yield)
end

function update_used_tool(tool)
	reset_yields()

	if (tool == nil) then
		set_allowed_mining({})
		override_tree_yield({{name = "wood-stick", count = 1}})

	elseif ("wood-stick" == tool.name) then
		set_allowed_mining({
			life_tree = true
		})
		override_tree_yield({{name = "wood-stick", count = 1}})

	elseif ("wood-stick-sharp" == tool.name) then
		set_allowed_mining({
			life_tree = true
		})
		override_tree_yield({
			{name = "wood-stick", count = 1},
			{name = "vines", count = 1}
		})

	elseif ("wood-stick-fire-hardened" == tool.name) then
		set_allowed_mining({
			life_tree = true,
			stone = yes
		})
		override_tree_yield({
			{name = "wood-stick", count = 1},
			{name = "vines", count = 1}
		})
		override_stone_yield({
			{name = "jagged-rock", count = 1}
		})

	else
		allow_resource_mining(true)
		allow_life_tree_mining(true)
		allow_rock_mining(true)
	end
end

Event.register(defines.events.on_player_created, function(e)
	update_used_tool(nil)
end)

Event.register(defines.events.on_player_tool_inventory_changed, function(e)
	local tool_inventory = game.players[e.player_index].get_inventory(defines.inventory.player_tools)
	if (tool_inventory.is_empty()) then
		update_used_tool(nil)
	else
		update_used_tool(tool_inventory[1])
	end
end)
