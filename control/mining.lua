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

Event.register(defines.events.on_player_created, function(e)
    allow_resource_mining(false)
    allow_rock_mining(false)
end)

Event.register(defines.events.on_player_tool_inventory_changed, function(e)
    local tool_inventory = game.players[e.player_index].get_inventory(defines.inventory.player_tools)
    if (tool_inventory.is_empty()) then
        allow_resource_mining(false)
        allow_rock_mining(false)
        return
    end

    local tool = tool_inventory[1]
    if tool.name == "iron-axe" then
        allow_resource_mining(true)
        allow_rock_mining(true)
    elseif tool.name == "steel-axe" then
        allow_resource_mining(true)
        allow_rock_mining(true)
    end
end)
