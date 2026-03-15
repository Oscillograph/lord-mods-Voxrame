local voxrame_path = debug.getinfo(1).source:match('@?(.*[\\/])')
local common_config = dofile(voxrame_path .. 'common.luacheckrc')


return common_config:extend({
	exclude_files = {
		"mods/vendor/",
		"util/",
	},
	files         = {
		-- Lua extending only in specific files:
		[voxrame_path .. 'helpers/src/lua_ext/**/*.lua'] = {	
			globals = { 'table', 'string', 'math', 'io', 'os', 'debug' }
		},
		-- Extend built-in globals only in specific files:
		[voxrame_path .. 'builtin_ext/src/**/*.lua'] = {
			globals = { 'VoxelArea', 'vector' }
		}
	}
})
