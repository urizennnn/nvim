local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set
vim.g.mapleader = " "
keymap("n", "<leader>x", "<cmd> :bdelete <cr>")
keymap("n", "<leader>", vim.cmd.NvimTreeToggle)
keymap("n", "<C-d>", "<C-d>zz")
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-v>", '"+p"')
keymap("n", "<C-c>", '"+y"')
keymap("n", "<C-l>", vim.cmd.Lazy)
keymap("n", "M", vim.cmd.Mason)
keymap("n", "git", vim.cmd.LazyGit)
keymap("n", "W", "<cmd> w<CR>")
keymap("n", "wq", "<cmd> wq<CR>")
keymap("n", "Q", "<cmd> quitall<CR>")
keymap("n", "qq", "<cmd> qa<CR>")
keymap("n", "so", "<cmd> so<CR>")
keymap("n", "<leader>xx", function()
	require("trouble").toggle()
end)
keymap("n", "<leader>n", "<cmd> bn <cr>")
keymap("n", "<leader>xw", function()
	require("trouble").toggle("workspace_diagnostics")
end)
keymap("n", "<leader>xd", function()
	require("trouble").toggle("document_diagnostics")
end)
keymap("n", "qf", function()
	require("trouble").toggle("quickfix")
end)
keymap("n", "<leader>xl", function()
	require("trouble").toggle("loclist")
end)
keymap("n", "gR", function()
	require("trouble").toggle("lsp_references")
end)
keymap("n", "vs", "<cmd> :vs <cr>")
keymap("n", "nd", ":NoiceDismiss<CR>", { silent = true })
keymap("n", "ee", "$")
keymap("v", "ee", "$")
keymap("v", "K", ":move '<-2<CR>gv=gv", { silent = true })
keymap("v", "J", ":move '>+1<CR>gv=gv", { silent = true })
keymap("n", "<leader>;", "<cmd> :norm A; <CR>")
keymap("n", "<leader>c", "<cmd> Copilot disable<CR>")
keymap("n", "<leader>C", "<cmd> Copilot enable<CR>")
keymap("n", "<A-Up>", "<cmd> resize +2<CR>")
keymap("n", "<C-Down>", "<cmd> resize -2<CR>")
keymap("n", "<C-Left>", "<cmd> vertical resize +2<CR>")
keymap("n", "<C-Right>", "<cmd> vertical resize -2<CR>")
keymap("n", "help", "<cmd> :Telescope help_tags<CR>", { silent = true })
keymap("n", "live", "<cmd>:LiveServerStart<CR>", { silent = true })
keymap("n", "stop", "<cmd>:LiveServerStop<CR>", { silent = true })
keymap("n", "GB", "<cmd>:GitBlameToggle<CR>", { silent = true, noremap = true })
keymap("n", "open", "<cmd>:GitBlameOpenCommitURL<CR>", { silent = true, noremap = true })
local bufnr = vim.api.nvim_get_current_buf()
keymap("n", "<leader>a", function()
	vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
	-- or vim.lsp.buf.codeAction() if you don't want grouping.
end, { silent = true, buffer = bufnr })

keymap("n", "cargo", function()
	vim.cmd.RustLsp("openCargo")
end)
keymap("n", "<leader>h", function()
	vim.cmd.RustLsp({ "hover", "actions" })
end)
keymap("n", "graph", "<cmd>:RustLsp crateGraph {backend {output}}<CR>")
keymap("n", "join", function()
	vim.cmd.RustLsp("joinLines")
end)
keymap("n", "tree", function()
	vim.cmd.RustLsp("syntaxTree")
end)
keymap("n", "<leader>t", ":TodoTelescope<CR>", { silent = true })
keymap("n", "run", "<cmd:Rest run<CR>")
keymap("n", "last", "<cmd:Rest last<CR>")
keymap("n", "gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true, buffer = bufnr })
keymap("n", "db", "<cmd>DBUIToggle<CR>")
keymap("n", "dbs", "<cmd>DBUIAddConnection<CR>")
keymap("n", "tt", "<cmd>tabnew<CR>")
keymap("n", "tq", "<cmd>tabclose<CR>")
keymap("n", "tn", "<cmd>tabnext<CR>")
keymap("n", "md", "<cmd>RenderMarkdown toggle<CR>")
keymap("v", "take", "<cmd>CodeSnap<CR>")
keymap("i", "<C-h>", "<Left>", opts)
keymap("i", "<C-j>", "<Down>", opts)
keymap("i", "<C-k>", "<Up>", opts)
keymap("i", "<A-l>", "<Right>", opts)
