data.raw["recipe"]["iron-axe"].energy_required = 5

local charcoal_burners = {
	{type = "boiler", name = "boiler"},
	{type = "furnace", name = "stone-furnace"},
	{type = "inserter", name = "burner-inserter"},
	{type = "mining-drill", name = "burner-mining-drill"},
}
for _, burner in ipairs(charcoal_burners) do
	data.raw[burner.type][burner.name].energy_source.fuel_categories = {"chemical", "charcoal"}
end
