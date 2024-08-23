function InsertTryCatch()
	local line = vim.api.nvim_get_current_line()
	local cursor_pos = vim.api.nvim_win_get_cursor(0)
	local new_lines = {
		"try {",
		"    " .. line,
		"} catch (error) {",
		"    console.error(error);",
		"	 return res.status().json({});",
		"}",
	}
	local current_line_number = cursor_pos[1] - 1
	vim.api.nvim_buf_set_lines(0, current_line_number, current_line_number + 1, false, new_lines)
end

function InsertTryCatchVisual()
	local start_line, _, end_line, _ = unpack(vim.fn.getpos("'<")), unpack(vim.fn.getpos("'>"))
	local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)

	table.insert(lines, 1, "try {")
	table.insert(lines, "} catch (error) {")
	table.insert(lines, "    console.error(error);")
	table.insert(lines, "}")

	vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, lines)
end
function InsertConsoleLog()
	local line = vim.api.nvim_get_current_line()
	local new_line = string.format("console.log(`${%s}`);", line)
	vim.api.nvim_set_current_line(new_line)
end
vim.keymap.set("n", "cl", InsertConsoleLog, { noremap = true })
vim.keymap.set("v", "cl", InsertConsoleLog, { noremap = true })
vim.keymap.set("n", "try", InsertTryCatch, { noremap = true })
vim.keymap.set("v", "try", InsertTryCatchVisual, { noremap = true })
