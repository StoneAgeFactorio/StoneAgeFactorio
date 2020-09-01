--By nicholasgower

local initial_recipes=require("initial-recipes")

for key, value in ipairs(initial_recipes) do
    local item=table.deepcopy(data.raw["recipe"][value])
    item.enabled=false
    if item.normal ~= nil then
        item.normal.enabled=false
        end
    if item.expensive ~= nil then
        item.expensive.enabled=false
        end
    data:extend({item})
    end


