local initial_recipes=require("initial-recipes")

local unlock_recipes={}
for key, value in ipairs(initial_recipes) do
    unlock_recipes[key]={type= "unlock-recipe", recipe=value}
end
--[[
for key,tech in ipairs(table.deepcopy(data.raw["technology"])) do
    if tech.prerequisites==nil or tech.prerequisites=={} then
        tech.prerequisites={"iron-axe"}
        data:extend{tech}
    end
    
end
]]
for key,tech in pairs(data.raw["technology"]) do
    if tech.prerequisites==nil then
        tech.prerequisites={"iron-axe"}
    end
end
    
data:extend{
    {
    type="technology",
    name="wood-stick",
    icons=table.deepcopy(data.raw["tool"]["wood-stick"]).icons,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"wood-stick",1}
        },
        time=1
    },
    order = "a-a-a",
    
    },
    {
    type="technology",
    name="wood-stick-sharp",
    icons=table.deepcopy(data.raw["tool"]["wood-stick-sharp"]).icons,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"wood-stick-sharp",1}
        },
        time=1
    },
    order = "b-a-a",
    prerequisites={"wood-stick"}
    },
    {
    type="technology",
    name="wood-stick-fire-hardened",
    icons=table.deepcopy(data.raw["tool"]["wood-stick-fire-hardened"]).icons,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"wood-stick-fire-hardened",1}
        },
        time=1
    },
    order = "c-a-a",
    prerequisites={"wood-stick-sharp"}
    },
    {
    type="technology",
    name="stone-shovel",
    icon=table.deepcopy(data.raw["tool"]["stone-shovel"]).icon,
    icon_size=table.deepcopy(data.raw["tool"]["stone-shovel"]).icon_size,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"stone-shovel",1}
        },
        time=1
    },
    order = "d-a-a",
    prerequisites={"wood-stick-fire-hardened"}
    },
    {
    type="technology",
    name="stone-axe",
    icons=table.deepcopy(data.raw["tool"]["stone-axe"]).icons,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"stone-axe",1}
        },
        time=1
    },
    order = "e-a-a",
    prerequisites={"wood-stick-fire-hardened"}
    },
    {
    type="technology",
    name="copper-hammer",
    icon=table.deepcopy(data.raw["tool"]["copper-hammer"]).icon,
    
    icon_size=table.deepcopy(data.raw["tool"]["copper-hammer"]).icon_size,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"copper-hammer",1}
        },
        time=1
    },
    order = "f-a-a",
    prerequisites={"stone-axe","stone-shovel"}
    },
    {
    type="technology",
    name="iron-axe",
    icon=table.deepcopy(data.raw["tool"]["iron-axe"]).icon,
    icon_size=table.deepcopy(data.raw["tool"]["iron-axe"]).icon_size,
    --icon_size=table.deepcopy(data.raw["tool"]["wood-stick"]).icon_size,
    unit={
        count=1,
        ingredients={
            {"iron-axe",1}
        },
        time=1
    },
    effects=unlock_recipes,
    order = "a-a-f",
    prerequisites={"copper-hammer"}
    }
}
