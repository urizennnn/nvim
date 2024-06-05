vim.keymap.set("n", "cl", InsertConsoleLog, { noremap = true })
function InsertConsoleLog()
	local line = vim.api.nvim_get_current_line()
	local new_line = string.format("console.log('%s');", line)
	vim.api.nvim_set_current_line(new_line)
end
