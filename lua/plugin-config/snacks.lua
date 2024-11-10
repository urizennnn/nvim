vim.print("Snacks loaded")
local opts = {
	bigfile = {
		enabled = true,
		setup = function(ctx)
			vim.b.minianimate_disable = true
			vim.schedule(function()
				vim.bo[ctx.buf].syntax = ctx.ft
			end)
		end,
	},
	notifier = {
		timeout = 3000, -- default timeout in ms
		width = { min = 40, max = 0.4 },
		height = { min = 1, max = 0.6 },
		-- editor margin to keep free. tabline and statusline are taken into account automatically
		margin = { top = 0, right = 1, bottom = 0 },
		padding = true, -- add 1 cell of left/right padding to the notification window
		sort = { "level", "added" }, -- sort by level and time
		icons = {
			error = " ",
			warn = " ",
			info = " ",
			debug = " ",
			trace = " ",
		},
		---@type snacks.notifier.style
		style = "compact",
		top_down = true, -- place notifications from top to bottom
		date_format = "%R", -- time format for notifications
		refresh = 50, -- refresh at most every 50ms
	},
	quickfile = { enabled = true },
	statuscolumn = { enabled = true },
	words = { enabled = true },
	styles = {
		notification = {
			wo = { wrap = true }, -- Wrap notifications
		},
	},
}

opts.keys = {
	{
		"<leader>un",
		function()
			Snacks.notifier.hide()
		end,
		desc = "Dismiss All Notifications",
	},
	{
		"<leader>bd",
		function()
			Snacks.bufdelete()
		end,
		desc = "Delete Buffer",
	},
	{
		"<leader>gb",
		desc = "Git Blame Line",
	},
	{
		"<leader>gB",
		function()
			Snacks.gitbrowse()
		end,
		desc = "Git Browse",
	},

	{
		"<leader>gl",
		function()
			Snacks.lazygit.log()
		end,
		desc = "Lazygit Log (cwd)",
	},
	{
		"<leader>R",
		function()
			Snacks.rename()
		end,
		desc = "Rename File",
	},

	{
		"]]",
		function()
			Snacks.words.jump(vim.v.count1)
		end,
		desc = "Next Reference",
		mode = { "n", "t" },
	},
	{
		"[[",
		function()
			Snacks.words.jump(-vim.v.count1)
		end,
		desc = "Prev Reference",
		mode = { "n", "t" },
	},
	{
		"<leader>N",
		desc = "Neovim News",
		function()
			Snacks.win({
				file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
				width = 0.6,
				height = 0.6,
				wo = {
					spell = false,
					wrap = false,
					signcolumn = "yes",
					statuscolumn = " ",
					conceallevel = 3,
				},
			})
		end,
	},
}
return opts
