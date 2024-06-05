local rt = require("rust-tools")
local mason_registry = require("mason-registry")

local codelldb = mason_registry.get_package("codelldb")
local extension_path = codelldb:get_install_path() .. "/extension/"
local codelldb_path = extension_path .. "adapter/codelldb"
local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"

rt.setup({
	dap = {
		adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
	},
	tools = {
		hover_actions = {
			auto_focus = false,
			border = "rounded",
		},
		executor = require("rust-tools/executors").termopen,
		runnables = {
			use_telescope = true,
		},
		inlay_hints = {
			auto = true,
			show_parameter_hints = true,
			parameter_hints_prefix = " ",
			other_hints_prefix = " ",
			max_len_align = false,
			max_len_align_padding = 1,
			right_align = false,
			right_align_padding = 7,
			highlight = "Comment",
		},
	},
	server = {
		on_attach = function(client, bufnr)
			vim.keymap.set("n", "<leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
			vim.keymap.set("n", "<leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
	},
})
