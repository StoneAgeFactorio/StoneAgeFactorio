
stone_lab_item=table.deepcopy(data.raw["item"]["lab"])

    stone_lab_item.name="stone-lab"
    --stone_lab_item
    stone_lab_item.place_result = "stone-lab"



stone_lab=table.deepcopy(data.raw["lab"]["lab"])
stone_lab.name="stone-lab"
stone_lab.inputs={"wood-stick","wood-stick-sharp","wood-stick-fire-hardened","stone-shovel","stone-axe","copper-hammer","iron-axe"}
stone_lab.energy_source={type="void"} --Stone age labs consume no energy.
data:extend({stone_lab_item,stone_lab})





data:extend({{
    type="recipe",
    enabled=true,
    energy_required = 1,
    ingredients =
    {
      {"wood-stick", 5},
    },
    result = "stone-lab", 
    name="stone-lab"


}})

