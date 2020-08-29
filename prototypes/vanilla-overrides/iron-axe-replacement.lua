

local iron_axe=table.deepcopy(data.raw["tool"]["automation-science-pack"])

iron_axe.name="iron-axe"
iron_axe.icon="__StoneAge__/graphics/16_51_icons/iron-axe.png"
iron_axe.icon_size=32
iron_axe.icons=nil
iron_axe.icon_mipmaps=nil
iron_axe.order="a[iron-axe]"
data:extend({iron_axe})