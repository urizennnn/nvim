local npairs = require("nvim-autopairs")
local Rule = require("nvim-autopairs.rule")

npairs.setup({
	check_ts = true,
	ts_config = {
		lua = { "string" },
		javascript = { "template_string" },
		java = false,
	},
	enable_check_bracket_line = true,
})

local ts_conds = require("nvim-autopairs.ts-conds")

npairs.add_rules({
	Rule("%", "%", "lua"):with_pair(ts_conds.is_ts_node({ "string", "comment" })),
	Rule("$", "$", "lua"):with_pair(ts_conds.is_not_ts_node({ "function" })),
	Rule("<", ">", "rust"),
	Rule("<", ">", "lua"):with_pair(ts_conds.is_not_ts_node({ "function", "string" })),
	Rule("<", ">", "html"),
})
