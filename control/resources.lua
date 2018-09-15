require "stdlib/event/event"

local resources = {
	"dry-hairy-tree",
	"clay-patch",
	"clay-patch",
	"clay-patch",
	"clay-patch",
	"sandy-patch",
	"sandy-patch",
	"sandy-patch",
	"sandy-patch",
	"sandy-patch"
}

function spawn_resources()
	for i, resource in ipairs(resources) do
		-- TODO: find interesting semi-random distribution that doesn't spawn
		-- on water or on top of other entities.
		local x = 3 * i
		local y = 3 * i
		if (i % 2 == 0) then
			x = x * -1
		end
		if (i % 3 == 0) then
			y = y * -1
		end
		game.surfaces["nauvis"].create_entity {name = resource, position = {x, y}}
	end
end

Event.register(defines.events.on_player_created, function(e)
	spawn_resources()
end)
