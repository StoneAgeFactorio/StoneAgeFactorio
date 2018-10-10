require "stdlib/event/event"
require "stdlib/entity/entity"
require "stdlib/string"

-- Runtime overrides of allowed mining

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
		if "iron-ore" == resource.name then
			return types["iron"] == true

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


-- Runtime overrides of mining yields

local function reset_yield_overrides()
	global.yield_overrides = nil
end

local function init_yield_overrides()
	if global.yield_overrides == nil then
		global.yield_overrides = {entities = {}, items = {}}
	end
end

local function override_item_yield(name, yield)
	init_yield_overrides()
	table.insert(global.yield_overrides.items, {name = name, yield = yield})
end

local function override_entity_yield(matcher, yield, extra_data)
	init_yield_overrides()
	table.insert(global.yield_overrides.entities, {matcher = matcher, yield = yield, extra_data = extra_data})
end

local function override_iron_yield(yield)
	override_item_yield("iron-ore", yield)
end

local function override_stone_yield(yield)
	override_item_yield("stone", yield)
end

local function override_rock_yield(yield)
	override_entity_yield(function(e) 
		return e.name ~= "rock-huge" and e.prototype.count_as_rock_for_filtered_deconstruction
	end, yield)
end

local function override_tree_yields(yields)
	override_entity_yield(function(e) return e.type == "tree" end, function(entity, buffer, yields)
		return string.contains(entity.prototype.order, "dead%-tree") and yields["dead"] or yields["life"]
	end, yields)
end

local function apply_item_yield_overrides(player, item_stack)
	for _, override in ipairs(global.yield_overrides.items) do
		if item_stack.name == override.name then
			player.remove_item(item_stack)
			for _, item in ipairs(override.yield) do
				player.insert(item)
			end
		end
	end
end

local function apply_entity_yield_overrides(entity, buffer)
	for _, override in ipairs(global.yield_overrides.entities) do
		if override.matcher(entity) then
			local items = override.yield
			if type(override.yield) == "function" then
				items = override.yield(entity, buffer, override.extra_data)
			end
			buffer.clear()
			if items ~= nil then
				for _, item in ipairs(items) do
					buffer.insert(item)
				end
			end
		end
	end
end


-- Set allowed mining / yields based on equiped tool

local function set_equiped_tool(tool)
	local toolname = tool and tool.name or "none"
	if global["equiped_tool"] == toolname then
		return
	end

	global["equiped_tool"] = toolname
	reset_yield_overrides()

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
				{name = "vines", count = 3}
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
				{name = "vines", count = 3}
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

	elseif ("stone-axe" == toolname) then
		set_allowed_mining({
			life_tree = true,
			rock = true,
			stone = true,
			iron = true,
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
		override_iron_yield({
			{name = "magnetite-flakes", count = 1},
		})

	else
		allow_all_mining()
	end
end

local function update_equiped_tool()
	local tool_inventory = game.players[1].get_inventory(defines.inventory.player_tools)
	if (tool_inventory.is_empty()) then
		set_equiped_tool(nil)
	else
		set_equiped_tool(tool_inventory[1])
	end
end


-- Event listeners

Event.register(defines.events.on_player_created, function(e)
	set_equiped_tool(nil)
end)

Event.register(defines.events.on_player_tool_inventory_changed, function(e)
	update_equiped_tool()
end)

Event.register(defines.events.on_chunk_charted, function()
	update_equiped_tool()
end)

Event.register(defines.events.on_player_mined_entity, function(e)
	if global.yield_overrides ~= nil then
		apply_entity_yield_overrides(e.entity, e.buffer)
	end
end)

-- This is a workaround to override the yield of resources that do not trigger
-- the on_player_mined_entity event. This will be fixed in 0.17. See:
-- https://forums.factorio.com/viewtopic.php?f=25&t=62285
Event.register(defines.events.on_player_mined_item, function(e)
	if global.yield_overrides ~= nil then
		apply_item_yield_overrides(game.players[e.player_index], e.item_stack)
	end
end)
