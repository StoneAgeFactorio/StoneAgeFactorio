require "stdlib/event/event"
require "stdlib/entity/entity"
require "stdlib/string"

function allow_resource_mining(mode)
    for _, entity in ipairs(game.surfaces["nauvis"].find_entities_filtered{type="resource"}) do
        entity.minable = mode
    end
end

function allow_rock_mining(mode)
    for _, entity in ipairs(game.surfaces["nauvis"].find_entities_filtered{type="simple-entity"}) do
        if entity.prototype.count_as_rock_for_filtered_deconstruction then
            entity.minable = mode
        end
    end
end

function update_used_tool(tool)
    if (tool == nil) then
        allow_resource_mining(false)
        allow_rock_mining(false)
    elseif tool.name == "iron-axe" then
        allow_resource_mining(true)
        allow_rock_mining(true)
    elseif tool.name == "steel-axe" then
        allow_resource_mining(true)
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
