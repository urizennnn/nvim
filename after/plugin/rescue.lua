local status, lsp = pcall(require, "rescue-lsp")
if not status then
	vim.notify("Failed to load rescue-lsp: " .. lsp, vim.log.levels.ERROR)
	return
end

lsp.setup({
	Lsp = {
		commands_override = false,
		-- find_lsp_servers = function() end,
	},
	window = {
		-- win_height = 30,
		-- win_width = 170,
		-- win_row = 10,
		-- win_col = 35,
		-- border = "rounded",
		-- relative = "editor",
	},
})
