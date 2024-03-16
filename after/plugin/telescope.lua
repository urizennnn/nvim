local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',function()
	local result= vim.fn.input("Grep > ")
	if result ~= "" then
		builtin.grep._string({search = result})
	else
		print("No input")
	end
end)

