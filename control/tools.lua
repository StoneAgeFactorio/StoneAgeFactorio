require "stdlib/event/event"
require "stdlib/entity/entity"
require "stdlib/string"

local function allow_mining(entity_type, allowed)
	for _, entity in ipairs(game.surfaces["nauvis"].find_entities_filtered{type = entity_type}) do
		if type(allowed) == "function" then
			entity.minable = allowed(entity)
		else
			entity.minable = allowed
		end
	end
end

local function set_allowed_mining(types)
	allow_mining("resource", function(resource)
		if "copper-ore" == resource.name then
			return types["copper"] == true

		elseif "stone" == resource.name then
			return types["stone"] == true

		else
			return false
		end
	end)

	allow_mining("simple-entity", function(entity)
		if "clay-patch" == entity.name then
			return types["clay"] == true

		elseif "sandy-patch" == entity.name then
			return types["sand"] == true

		elseif "rock-huge" == entity.name then
			return types["rock_huge"] == true

		elseif entity.prototype.count_as_rock_for_filtered_deconstruction then
			return types["rock"] == true

		else
			return false
		end
	end)

	if types["life_tree"] == true then
		allow_mining("tree", true)
	else
		allow_mining("tree", function(entity)
			return string.contains(entity.prototype.order, "dead%-tree")
		end)
	end
end

local function allow_all_mining()
	allow_mining("resource", true)
	allow_mining("simple-entity", true)
	allow_mining("tree", true)
end

local function reset_yields()
	Event.register(defines.events.on_player_mined_entity, nil)
	Event.register(defines.events.on_player_mined_item, nil)
end

-- This is a workaround to override the yield of resources that do not trigger
-- the on_player_mined_entity event. This will be fixed in 0.17. See:
-- https://forums.factorio.com/viewtopic.php?f=25&t=62285
local function override_item_yield(matcher, yield)
	Event.register(
		defines.events.on_player_mined_item,
		function(e)
			if matcher(e.item_stack) then
				game.players[e.player_index].remove_item(e.item_stack)
				for _, item in ipairs(yield) do
					game.players[e.player_index].insert(item)
				end
			end
		end
	)
end

local function override_entity_yield(matcher, yield)
	Event.register(defines.events.on_player_mined_entity, function(e)
		if not matcher(e.entity) then
			return
		end

		local items = yield
		if type(yield) == "function" then
			items = yield(e.entity, e.buffer)
		end
		e.buffer.clear()
		if items ~= nil then
			for _, item in ipairs(items) do
				e.buffer.insert(item)
			end
		end
	end)
end

local function override_copper_yield(yield)
	override_item_yield(function(i) return i.name == "copper-ore" end, yield)
end

local function override_stone_yield(yield)
	override_item_yield(function(i) return i.name == "stone" end, yield)
end

local function override_rock_yield(yield)
	override_entity_yield(function(e) 
		return e.name ~= "rock-huge" and e.prototype.count_as_rock_for_filtered_deconstruction
	end, yield)
end

local function override_tree_yields(yields)
	override_entity_yield(function(e) return e.type == "tree" end, function(entity)
		return string.contains(entity.prototype.order, "dead%-tree") and yields["dead"] or yields["life"]
	end)
end

local function update_used_tool(tool)
	local toolname = tool and tool.name or "none"
	if global["equiped_tool"] == toolname then
		return
	end

	reset_yields()

	if ("none" == toolname) then
		set_allowed_mining({}) -- dead trees always allowed
		override_tree_yields({
			dead = {{name = "wood-stick", count = 1}}
		})

	elseif ("wood-stick" == toolname) then
		set_allowed_mining({
			life_tree = true
		})
		override_tree_yields({
			dead = {{name = "wood-stick", count = 1}},
			life = {{name = "wood-stick", count = 2}},
		})

	elseif ("wood-stick-sharp" == toolname) then
		set_allowed_mining({
			life_tree = true
		})
		override_tree_yields({
			dead = {{name = "wood-stick", count = 1}},
			life = {
				{name = "wood-stick", count = 2},
				{name = "vines", count = 2}
			}
		})

	elseif ("wood-stick-fire-hardened" == toolname) then
		set_allowed_mining({
			life_tree = true,
			stone = true
		})
		override_tree_yields({
			dead = {{name = "wood-stick", count = 1}},
			life = {
				{name = "wood-stick", count = 2},
				{name = "vines", count = 2}
			}
		})
		override_stone_yield({
			{name = "jagged-rock", count = 1}
		})

	elseif ("basket" == toolname) then
		set_allowed_mining({
			sand = true
		})
		override_tree_yields({
			dead = {{name = "wood-stick", count = 1}}
		})

	elseif ("stone-hammer" == toolname) then
		set_allowed_mining({}) -- dead trees always allowed

	elseif ("stone-shovel" == toolname) then
		set_allowed_mining({
			sand = true,
			clay = true,
		})
		override_copper_yield({
			{name = "malachite", count = 1},
		})

	elseif ("stone-axe" == toolname) then
		set_allowed_mining({
			life_tree = true,
			rock = true,
			stone = true,
			copper = true,
		})
		override_tree_yields({
			dead = {{name = "raw-wood", count = 1}},
			life = {{name = "raw-wood", count = 2}},
		})
		override_stone_yield({
			{name = "jagged-rock", count = 2}
		})
		override_rock_yield({
			{name = "jagged-rock", count = 5}
		})
		override_copper_yield({
			{name = "malachite", count = 1},
		})

	else
		allow_all_mining()
	end

	global["equiped_tool"] = toolname
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
