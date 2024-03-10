require ("dap-go").setup()
require ("dapui").setup()

-- Keybindings
vim.api.nvim_set_keymap('n', '<leader>dt', ':DapUiToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dc', ':DapContinue<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ds', ':DapStop<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dn', ':DapNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>db', ':DapToggleBreakpoint<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dr', ':DapRestart<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>di', ':DapStepInto<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>do', ':DapStepOut<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>dp', ':DapPause<CR>', { noremap = true, silent = true })
