--By nicholasgower

local initial_recipes=
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
}

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


