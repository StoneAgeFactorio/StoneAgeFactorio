--[[local initial_recipes=
{"wooden-chest",
"iron-chest",
"transport-belt",
"burner-inserter",
"inserter",
"small-electric-pole",
"pipe",
"pipe-to-ground",
"stone-brick",

"repair-pack",
"boiler",
"steam-engine",
"burner-mining-drill",
"electric-mining-drill",
"offshore-pump",
"stone-furnace",
"lab",

"iron-plate",
"copper-plate",
"copper-cable",
"iron-stick",
"iron-gear-wheel",
"electronic-circuit",
"automation-science-pack",

"pistol",
"firearm-magazine",
"light-armor",
"radar"
} ]]
local initial_recipes={}
local x=0
for key,recipe in pairs(data.raw["recipe"]) do
    if recipe.enabled~=false  then
            if (recipe.normal==nil and recipe.expensive==nil) or (recipe.normal.enabled~=false and recipe.expensive.enabled~=false) then
            x=x+1
            initial_recipes[x]=recipe.name
        end
    end
end
return initial_recipes