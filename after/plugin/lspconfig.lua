require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
})
require("lspconfig").lua_ls.setup({})
require("lspconfig").tsserver.setup({})
require("lspconfig").clangd.setup({
	cmd = {
		"clangd",
		"--offset-encoding=utf-16",
		"-j=4",
		"--background-index",
		"--clang-tidy",
		"--fallback-style=llvm",
		"--all-scopes-completion",
		"--completion-style=detailed",
		"--header-insertion=iwyu",
		"--header-insertion-decorators",
		"--pch-storage=memory",
		"--enable-config",
		"--suggest-missing-includes",
		"--cross-file-rename",
	},
	filetypes = { "c", "cpp", "objc", "objcpp" },
	root_dir = require("lspconfig.util").root_pattern(
		"compile_commands.json",
		".git",
		".clangd",
		"compile_flags.txt",
		".clangd-tidy",
		".clang-format",
		"configure.ac"
	),
	single_file = true,
	single_file_support = true,
})
require("lspconfig").golangci_lint_ls.setup({})
require("lspconfig").rust_analyzer.setup({})
