local augroup = vim.api.nvim_create_augroup("LspFormatting", { clear = true })
local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.formatting = true
vim.print(capabilities.textDocument.formatting)
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
})
require("mason-lspconfig").setup_handlers({
	["rust_analyzer"] = function() end,
})
require("lspconfig").lua_ls.setup({})
require("lspconfig").ts_ls.setup({})
require("lspconfig").pyright.setup({
	capabilities = capabilities,
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_dir = require("lspconfig.util").root_pattern("pyproject.toml", "setup.py", "setup.cfg", "requirements.txt"),
	single_file_support = true,
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({
				group = augroup,
				buffer = bufnr,
			})
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ bufnr = bufnr })
				end,
			})
		end
	end,
})

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
	single_file_support = true,
})
require("lspconfig").html.setup({
	capabilities = capabilities,
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html" },
	init_options = {
		configurationSection = { "html", "css", "javascript" },
		embeddedLanguages = {
			css = true,
			javascript = true,
		},
		provideFormatter = true,
	},
	single_file_support = true,
})
-- require("lspconfig").golangci_lint_ls.setup({})
require("lspconfig").gopls.setup({
	capabilities = capabilities,
	cmd = { "gopls" }, -- Remove "serve" for now
	filetypes = { "go", "gomod" }, -- Add "gomod" if working with Go modules
	root_dir = require("lspconfig.util").root_pattern("go.mod", ".git"),
	single_file_support = true,
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
			usePlaceholders = true,
			completeUnimported = true,
		},
	},
})
