require("nvim-tree").setup({
	sort = {
		sorter = "case_sensitive",
	},
	view = {
		centralize_selection = false,
		cursorline = true,
		debounce_delay = 15,
		side = "right",
		preserve_window_proportions = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
		width = 30,
		float = {
			enable = true,
			quit_on_focus_loss = true,
			open_win_config = {
				relative = "editor",
				border = "rounded",
				width = 30,
				height = 30,
				row = 1,
				col = 1,
			},
		},
	},
	renderer = {
		group_empty = true,
		icons = {
			web_devicons = {
				file = {
					enable = true,
					color = true,
				},
				folder = {
					enable = true,
					color = true,
				},
			},
			glyphs = {
				default = "",
				symlink = "",
				bookmark = "󰆤",
				modified = "●",
				folder = {
					arrow_closed = "",
					arrow_open = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
			},
		},
	},
	filters = {
		dotfiles = false,
	},
})
