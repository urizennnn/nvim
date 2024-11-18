local luasnip = require("luasnip")
luasnip.add_snippets("javascript", {
	luasnip.snippet("doc", {
		luasnip.text_node({ "/**", " * " }),
		luasnip.insert_node(1, "Description"),
		luasnip.text_node({ "", " */" }),
		luasnip.insert_node(0),
	}),
})
