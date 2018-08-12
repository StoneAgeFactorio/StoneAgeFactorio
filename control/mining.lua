require "stdlib/entity/entity"
require "stdlib/string"

mining_state = {
    allowed = nil
}

function allow_mining(mode)
    if mining_state.allowed == mode then return end

    for _, entity in ipairs(game.surfaces["nauvis"].find_entities_filtered{type="resource"}) do
        entity.minable = mode
    end
    mining_state.allowed = mode
end

script.on_event(defines.events.on_player_created, function(e)
    allow_mining(false)
end)

script.on_event(defines.events.on_player_tool_inventory_changed, function(e)
    local tool_inventory = game.players[e.player_index].get_inventory(defines.inventory.player_tools)
    if (tool_inventory.is_empty()) then
        allow_mining(false)
        return
    end

    local tool = tool_inventory[1]
    if tool.name == "iron-axe" then
        allow_mining(true)
    elseif tool.name == "steel-axe" then
        allow_mining(true)
    end
end)
