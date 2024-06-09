return {
	"rmagatti/auto-session",
	config = function()
		local session = require("auto-session")
		session.setup({
			auto_restore_enabled = false,
			auto_save_enabled = true,
			auto_session_suppress_dirs = { "~/", "~/Downloads", "~/Documents" },
		})

		local keymap = vim.keymap

		keymap.set("n", "<C-s>", "<cmd>SaveSession<CR>")
		keymap.set("n", "<leader>r", "<cmd>RestoreSession<CR>")
	end,
}
