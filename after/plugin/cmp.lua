local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<Enter>"] = cmp.mapping.confirm({ select = true }),
	},
})
