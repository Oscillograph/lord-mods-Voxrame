return dofile("common.luacheckrc"):extend({

	-- Artifacts from Lord Game:
	-- TODO: Remove this after cleaning up the code
	files = {
		["builtin_ext/src/stack.lua"]           = { ignore = { "131" } }, -- unused global variable drop_items_to_world
		["projectiles/src/projectiles/api.lua"] = { ignore = { "113" } }, -- accessing undefined variable nazgul_area
	}

})
